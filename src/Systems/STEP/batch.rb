#!/usr/bin/ruby

# batch.rb - process a big batch of short (paragraph-length) stories in parallel
# 2016-01-04
# William de Beaumont
#
# USAGE: set TRIPS_BASE to a reasonable value, and run this program from a
# directory where you want the batch??/ logdirs to show up:
#   caffeinate -s script batch.log $TRIPS_BASE/src/Systems/STEP/batch.rb
# some parameters are defined as constants below:
#
# See also ../drum/batch.rb, which this is based on.

raise "TRIPS_BASE environment variable unset" unless (ENV.key?('TRIPS_BASE'))

INPUT_FILE=ENV['TRIPS_BASE'] + '/etc/Data/ROCStories__spring2016.tsv'
NUM_TRIPSES=4
BATCH_SIZE=100 # stories
PORT_BASE=6230
STORY_TIMEOUT=900 # seconds (15 minutes)

$: << ENV['TRIPS_BASE'] + '/etc'

require 'timeout'
require 'benchmark'
require 'thwait'
require 'TripsModule/trips_module'

class StepParseFiles
  include TripsModule
  include Timeout

  attr_reader :thread

  def initialize(logdir, port, stories)
    @alive = true
    @logdir = logdir
    $stderr.puts "#{logdir} starting on port #{port}"
    @trips_pid = fork {
      # suppress console output (it all goes in the logs too anyway)
      $stdout.reopen('/dev/null','w')
      $stderr.reopen($stdout)
      exec(ENV['TRIPS_BASE'] + '/bin/trips-step', *%w{-display none -port}, port.to_s, '-logdir', logdir)
    }
    raise "Failed to start TRIPS" if (@trips_pid.nil?)
    sleep 5 # wait for Facilitator to be up before trying to connect
    super(['-connect', "127.0.0.1:#{port}"])
    @name = "STEPPARSEFILES"
    init()
    @stories = stories
    @last_story_id = nil
    # wait for TT to be ready before we start sending load-file messages
    #add_handler(KQML.from_s('(tell &key :content (module-status . *) :sender TEXTTAGGER)'), method(:do_batch))
    # wait for SkeletonScore...
    add_handler(KQML.from_s('(tell &key :content (module-status . *) :sender SKELETONSCORE)'), method(:do_batch))
  end

  def alive? ; @alive ; end

  def die
    # tell TRIPS to exit, and wait for it to do so
    begin
      send_msg(KQML.from_s('(request :receiver facilitator :content (exit))'))
      @socket.shutdown # make it easier for Facilitator to shut down?
    rescue => e
      $stderr.puts "failed to send exit message to facilitator (#{@logdir}): #{e.message}"
    end
    Process.wait(@trips_pid)
    $stderr.puts "#{@logdir} finished"
    begin
      sleep 2 # wait a little more for the port to become available
    end while (system("lsof -i4TCP@127.0.0.1:#{@port} |grep java"))
    @alive = false
  end

  def do_batch(msg)
    @stories.each { |id, text|
      @last_story_id = id
      output_file = "#{@logdir}/#{id}.xml"
      $stderr.puts "starting #{id}..."
      times = Benchmark.measure {
	reply =
	  timeout(STORY_TIMEOUT) {
	    send_and_wait(KQML[:request, :receiver => :webparser, :content =>
	      KQML[:http, :post, "step", :query => KQML[:input => text, :"semantic-skeleton-scoring" => "on"]]
	    ])
	  }
	raise "expected :content-type \"text/xml...\"" unless (reply[:"content-type"] =~ /^text\/xml/)
	raise "expected string in :content" unless (String === reply[:content])
	File.open(output_file, 'w').print reply[:content]
      }
      $stderr.puts "processing #{id} took #{times.real} seconds"
    }
    @last_story_id = nil
  rescue => e
    $stderr.puts "while processing #{@last_story_id}: " + e.message, *e.backtrace
  ensure
    die
  end

  def run_in_background
    @thread = Thread.new { self.run }
  end
end

port2module = Array.new(NUM_TRIPSES)

stories = nil
if (File.directory?(INPUT_FILE)) # Omid's directory full of text files
  if (INPUT_FILE =~ /files_to_parse\/?$/) # one sentence per line
    stories = []
    Dir[INPUT_FILE + '/*'].each { |filename|
      basename = File.basename(filename)
      File.open(filename, 'r').each_line.with_index { |line, i|
        stories << [((basename + '-%06d') % [i]), line]
      }
    }
  else # one story per file
    stories = Dir[INPUT_FILE + '/*'].collect { |filename|
      [File.basename(filename), File.open(filename, 'r').read]
    }
  end
else # Nasrin's single TSV file
  stories = File.open(INPUT_FILE, 'r').each_line.drop(1).collect { |line|
    # 2015-12
    #story_id, worker_id, story_title, *sentences = line.chomp.split(/\t/)
    # 2016-09 ROCStories
    story_id, story_title, *sentences = line.chomp.split(/\t/)
    # 2016-09 cloze
    # story_id, story_title, *sentences, answer_right_ending = line.chomp.split(/\t/)
    story_id =~ /^[\w-]+$/ or raise "bogus story id: #{story_id}"
    [story_id, sentences.join(' ')]
  }
end

NUM_BATCHES = (stories.size * 1.0 / BATCH_SIZE).ceil

$stderr.puts "read #{stories.size} stories, will parse in #{NUM_BATCHES} batches"

tw = ThreadsWait.new

num_digits = (Math.log(NUM_BATCHES) / Math.log(10)).ceil
NUM_BATCHES.times { |batch_num|
  logdir = "batch%0#{num_digits}d" % [batch_num]
  unless (File.exists?(logdir)) # already did this one
    batch_stories = stories[batch_num * BATCH_SIZE, BATCH_SIZE]
    # try to start this batch by assigning it to the first available
    # thread/module/TRIPS instance/port
    started = false
    begin
      port2module.each_with_index { |mod, port|
	if (mod.nil? or not mod.alive?)
	  port2module[port] =
	    StepParseFiles.new(logdir, port + PORT_BASE, batch_stories)
	  port2module[port].run_in_background
	  tw.join_nowait(port2module[port].thread)
	  started = true
	  break
	end
      }
      unless (started)
        # all are busy
	# wait for the next thread to finish
	$stderr.puts "waiting for next thread to finish"
        tw.next_wait
      end
    end until (started)
  end
}
# wait for remaining threads
tw.all_waits

# pack up the resulting .xml files in a .tar.bz2 file named like this dir, and
# put it up on the web
pwd_name = File.basename(Dir.pwd)
system("cd .. && find #{pwd_name} -name '*.xml' |grep -v '/old' |tar -jcvf #{pwd_name}.tar.bz2 -T - && cp #{pwd_name}.tar.bz2 /Library/WebServer/Documents/step-logs/")
