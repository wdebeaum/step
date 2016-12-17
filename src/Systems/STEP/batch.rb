#!/usr/bin/ruby

# batch.rb - process a big batch of short (sentence- or paragraph-length) text units in parallel
# 2016-09-16
# William de Beaumont
#
# Run "./batch.rb --help" for usage information.
#
# See also ../drum/batch.rb, which this is based on.

require 'ostruct'
require 'optparse'
require 'csv'
require 'timeout'
require 'benchmark'
require 'thwait'

#
# Option parsing/checking
#

Infinity = 1.0/0.0 # for unspecified column range ends

Options = OpenStruct.new

# defaults
Options.input_format = 'tsv'
Options.output_archive = true
Options.num_tripses = 4
Options.batch_size = 100
Options.port_base = 6230
Options.timeout = 900
# (some options not listed here default to nil)

begin # catch option parsing errors so we can print them without backtrace

  OptionParser.new { |opts|
    opts.banner = <<EOB
Mac usage:
  cd $output_dir
  export TRIPS_BASE=...
  caffeinate -s script batch.log $TRIPS_BASE/src/Systems/STEP/batch.rb [options]

  (caffeinate prevents the Mac from sleeping until the process is finished, and
  script logs whatever happens on the console to batch.log.)

Linux usage:
  cd $output_dir
  export TRIPS_BASE=...
  script batch.log -c "$TRIPS_BASE/src/Systems/STEP/batch.rb [options]"

  (Note the different usage of the script command on Linux.)

Run a large number of units of text (sentences, paragraphs, short stories,
etc.) through the STEP web parser, optionally collect the resulting .xml files
into a .tar.bz2 archive with the same name as the current directory, and
optionally copy that file to a web directory for others to download.

Input is processed in batches, and each batch creates a subdirectory named
batchN/ where N is the zero-padded, zero-based batch number. If some of these
subdirectories already exist, those batches will be skipped. This makes it
possible to restart after an incomplete run, without reprocessing
already-completed batches; just remove the incomplete batch subdirectories and
run the same command again. If you move the incomplete batches to a
subdirectory whose name starts with 'old', their .xml files will not appear in
the output archive.

NOTE: besides the usual STEP checkout, you also need to get these directories
before you configure and build STEP for use with this program:
  $TRIPS_BASE/src/WebParser/
  $TRIPS_BASE/src/config/ruby/

EOB

    # where the input is

    opts.on('-fFILE', '--input-file=FILE',
      #                                           # text must be between the #s 
      "A single file to take input from. You must",
      "use either this option or",
      #v space prevents this being interpreted as a spelling of the option
      " \b--input-directory, but not both.") { |f|
      # ^^ backspace character erases the space
      File.exists?(f) or raise "input file #{f.inspect} does not exist"
      File.directory?(f) and
	raise "input file #{f.inspect} is actually a directory; " +
	      "use --input-directory=#{f.inspect} instead if this is intentional"
      Options.input = f
      Options.input_is_dir = false
    }

    opts.on('-dDIR', '--input-directory=DIR',
      #                                           #
      "A directory full of files to take input",
      "from. You must use either this option or",
      " \b--input-file, but not both.") { |d|
      File.exists?(d) or raise "input file #{d.inspect} does not exist"
      File.directory?(d) or
	raise "input directory #{d.inspect} is actually a file; " +
	      "use --input-file=#{d.inspect} instead if this is intentional"
      Options.input = d
      Options.input_is_dir = true
    }

    # format of the input

    opts.on('-eFORMAT', '--input-file-format=FORMAT',
      #                                           #
      "(Mnemonic: Extension) The format of the",
      "input file(s). Must be one of the",
      "following:",
      "  'txt': plain text (may be one big text",
      "    unit or a text unit for each line),",
      "  'tsv': tab-separated values,",
      "  'csv': comma-separated values (may have",
      "    quotes around values, etc.),",
      "  'psv': pipe-separated values.",
      "Default 'tsv'.") { |f|
      formats = %w{txt tsv csv psv}
      formats.include?(f) or
	raise "bogus --input-file-format: " +
	      "expected one of #{formats.inspect}, but got #{f.inspect}"
      if (Options.one_text_unit_per_file and f != 'txt')
	raise "--input-file-format=#{f} is incompatible with --one-text-unit-per-file"
      end
      Options.input_format = f
    }

    opts.on('-g', '--drop-headings',
      #                                           #
      "(Mnemonic: headinG) Drop the first row of",
      "each input file. Not valid with",
      " \b--input-file-format=txt.") {
      Options.drop_headings = true
    }

    opts.on('-iINTEGER', '--id-column=INTEGER', Integer,
      #                                           #
      "The (one-based) column to take the text",
      "unit ID from (not valid with",
      " \b--input-file-format=txt). IDs are used",
      "to name the .xml files, so they are",
      "restricted to contain only letters,",
      "numbers, periods, underscores, and hyphens.",
      "The default is to construct IDs using the",
      "individual filename, followed by a hyphen",
      "and a zero-padded, zero-based line number",
      "(not counting dropped headings). Line",
      " numbers are not appended in",
      " \b--one-text-unit-per-file mode.") { |c|
      c >= 1 or raise "expected positive integer ID column index, but got #{c}"
      Options.id_column = c
    }

    opts.on('-cLIST', '--text-columns=LIST',
      #                                           #
      "The columns to take the text unit itself",
      "from (not valid with",
      " \b--input-file-format=txt). Column values",
      "are joined with single spaces, and a period",
      "is added to each one that doesn't already",
      "have sentence-final punctuation. This",
      "option works the same as the 'cut'",
      "command's -f option. That is, it's a comma-",
      "separated list of one-based column numbers,",
      "or hyphenated ranges thereof. Omitting one",
      "end of a range means take everything on",
      "that side. So:",
      "  N   means the Nth column only,",
      "  N-M means columns N through M inclusive,",
      "  N-  means the Nth column and everything",
      "      after it, and",
      "  -M  means the Mth column and everything",
      "      before it.",
      "The default is to use all columns that",
      "aren't the ID column.") { |str|
      Options.text_column_ranges =
	str.split(/,/).collect { |range_str|
	case range_str
	  when /^\d+$/
	    i = range_str.to_i
	    i..i
	  when /^(\d+)-(\d+)$/
	    $1.to_i..$2.to_i
	  when /^(\d+)-$/
	    $1.to_i..Infinity
	  when /^-(\d+)$/
	    1..$2.to_i
	  else
	    raise "bogus range spec in --text-columns: #{range_str}"
	end
      }
    }

    opts.on('-1', '--one-text-unit-per-file',
      #                                           #
      "If this option is given, each input file is",
      "treated as one text unit (implies",
      " \b--input-file-format=txt). By default, each",
      "line of each input file is a text unit.") {
      Options.one_text_unit_per_file = true
      Options.input_format = 'txt'
    }
    
    opts.on('-sPRESET', '--preset=PRESET',
      #                                           #
      "Apply input format option presets",
      "corresponding to specific data sets:",
      "  'rocstories2015' is Nasrin's ROCStories",
      "    data, version 3 (from 2015-12), options",
      "    are:",
      "      --drop-headings",
      "      --id-column=1",
      "      --text-columns=4-",
      "  'rocstories2016' is the Spring 2016",
      "    version, options are:",
      "      --drop-headings",
      "      --id-column=1",
      "      --text-columns=3-",
      "  'rocstories2017' is the Winter 2017",
      "    version, options are:",
      "      --drop-headings",
      "      --id-column=1",
      "      --text-columns=3-",
      "      --input-file-format=csv",
      "  'cloze' is Nasrin's Cloze Test data,",
      "    options are:",
      "      --drop-headings",
      "      --id-column=1",
      "      --text-columns=2-7",
      "  'obdata' is the data Omid sent me on",
      "    2016-01-04, options are:",
      "      --one-text-unit-per-file",
      "  'obfiles' is the data Omid sent me on",
      "    2016-06-20, options are:",
      "      --input-file-format=txt") { |p|
      # add options to the end of ARGV
      ARGV.push(*(
	case p
	  when 'rocstories2015'
	    %w{--drop-headings --id-column=1 --text-columns=4-}
	  when 'rocstories2016'
	    %w{--drop-headings --id-column=1 --text-columns=3-}
	  when 'rocstories2017'
	    %w{--drop-headings --id-column=1 --text-columns=3- --input-file-format=csv}
	  when 'cloze'
	    %w{--drop-headings --id-column=1 --text-columns=2-7}
	  when 'obdata'; %w{--one-text-unit-per-file}
	  when 'obfiles'; %w{--input-file-format=txt}
	  else raise "unknown preset #{p.inspect}"
	end
      ))
    }

    # other options

    opts.on('-a', '--no-output-archive',
      #                                           #
      "If this option is given, the output",
      ".tar.bz2 archive is not made. You can still",
      "get the .xml files from the batch*/",
      "directories (along with the rest of the",
      "logs).") {
      Options.output_archive = false
    }

    opts.on('-wDIR', '--output-archive-directory=DIR',
      #                                           #
      "(Mnemonic: Web directory) The directory to",
      "copy the output .tar.bz2 archive into. By",
      "default the archive is not copied.") { |d|
      File.exists?(d) or raise "output archive directory does not exist"
      File.directory?(d) or raise "output archive directory is not a directory"
      Options.output_archive_dir = d
    }

    opts.on('-nINTEGER', '--num-tripses=INTEGER', Integer,
      #                                           #
      "The number of parallel TRIPS instances",
      "to run at once. Default 4.") { |n|
      n >= 1 or raise "expected positive integer in --num-tripses, but got #{n}"
      Options.num_tripses = n
    }

    opts.on('-bINTEGER', '--batch-size=INTEGER', Integer,
      #                                           #
      "The number of text units to process in a",
      "single TRIPS instance before restarting it.",
      "Default 100.") { |s|
      s >= 1 or raise "expected positive integer in --batch-size, but got #{s}"
      Options.batch_size = s
    }

    opts.on('-pINTEGER', '--port-base=INTEGER', Integer,
      #                                           #
      "The first port number to use for a TRIPS",
      "instance. Ports in the interval [port-base,",
      "port-base + num-tripses) will be used.",
      "Default 6230.") { |p|
      (1024..65535).include?(p) or raise "expected base port number between 1024 and 65535 inclusive, but got #{p}"
      Options.port_base = p
    }

    opts.on('-tINTEGER', '--timeout=INTEGER', Integer,
      #                                           #
      "The number of seconds to wait for a result",
      "for an individual text unit, before giving",
      "up on the rest of the batch and restarting",
      "the (likely stuck) TRIPS instance. Default",
      "900 (15 minutes).") { |t|
      t >= 1 or raise "expected positive integer in --timeout, but got #{t}"
      Options.timeout = t
    }

    # help

    opts.on('-h', '--help', 'Prints this help and exits.') {
      puts opts
      exit
    }
  }.order! # ordered mode might be necessary for --preset to work?

  # additional sanity checks
  Options.input.nil? and
    raise "one of --input-file or --input-directory is required"
  Options.port_base + Options.num_tripses <= 65536 or
    raise "expected port-base + num-tripses <= 65536, but got " +
	  "#{Options.port_base} + #{Options.num_tripses} = " +
	  "#{Options.port_base + Options.num_tripses} > 65536"
  if (Options.input_format == 'txt')
    Options.drop_headings and
      raise "--drop-headings is incompatible with --input-file-format=txt"
    Options.id_column.nil? or
      raise "--id-column is incompatible with --input-file-format=txt"
    Options.text_column_ranges.nil? or
      raise "--text-columns is incompatible with --input-file-format=txt"
  end
  if (Options.output_archive_dir and not Options.output_archive)
    raise "--output-archive-directory is incompatible with --no-output-archive"
  end
  ENV.key?('TRIPS_BASE') or raise "TRIPS_BASE environment variable unset"
  File.exists?(ENV['TRIPS_BASE']+'/src/WebParser/') or
    raise "You need to check out src/WebParser/ and rebuild the lisp image before using this program."
  File.exists?(ENV['TRIPS_BASE']+'/src/config/ruby/') or
    raise "You need to check out src/config/ruby/, (re-)run configure, and 'make install' in src/KQML/ and src/TripsModule/ before using this program."

rescue => e
  $stderr.puts "Error: #{e.message}" # no backtrace
  $stderr.puts "Run '#{$0} --help' for usage information."
  exit 1
end

$stderr.puts "Options = #{Options.inspect}"

#
# Input reading functions
#

module Enumerable
  # join sentence strings with spaces, after adding a period to each sentence
  # that doesn't already end with sentence-ending punctuation
  def join_sentences
    collect { |s|
      s + ((s =~ /[\.\?\!]["']?$/) ? '' : '.')
    }.join(' ')
  end
end

# given the current Options, and the column values of one row, return a text
# unit string, and add an ID to the ids list if appropriate
def row_to_text_unit(cols, ids)
  # prefix nil to account for one-based column indices
  cols = [nil] + cols
  unless (Options.id_column.nil?)
    # save the ID column
    id = cols[Options.id_column]
    id =~ /^[\w\.-]+$/ or raise "bogus text unit ID: #{id}"
    ids << id
  end
  if (Options.text_column_ranges)
    Options.text_column_ranges.collect_concat { |range|
      # Array#[] doesn't accept infinite ranges, so make it finite
      finite_range =
        (range.end == Infinity ? (range.begin..(cols.size-1)) : range)
      cols[finite_range]
    }.join_sentences
  else
    # get all the non-ID columns as the text unit
    cols.delete_at(Options.id_column) if (Options.id_column)
    cols.drop(1).join_sentences
  end
end

# return the list of text units ([id, text] pairs) from a single file, given
# its name
def read_text_units_from_file(filename)
  bn = File.basename(filename)
  File.open(filename, 'r') { |f|
    if (Options.input_format == 'txt')
      if (Options.one_text_unit_per_file)
	return [[bn, f.read]]
      else # one text unit per line
	lines = f.readlines
	num_digits = Math.log10(lines.size).ceil
	return lines.each_with_index.collect { |l, i|
	  [bn + ("-%0#{num_digits}d" % [i]), l]
	}
      end
    else # *sv table
      separator =
        case Options.input_format
	  when 'csv'; ',' # unused
	  when 'psv'; '|'
	  when 'tsv'; "\t"
	  else raise "WTF"
	end
      ids = []
      if (Options.input_format == 'csv')
	csv_options =
	  (Options.drop_headings ?
	    { headers: true, return_headers: false } : {})
	text_units = CSV.new(f, csv_options).collect { |row|
	  row_to_text_unit((Options.drop_headings ? row.fields : row), ids)
	}
      else # if it's not csv, don't do anything fancy, just split
	lines = f.each_line
	lines.next if (Options.drop_headings)
	text_units = lines.collect { |l|
	  row = l.chomp.split(separator)
	  row_to_text_unit(row, ids)
	}
      end
      # make IDs if they're not from a column
      unless (Options.id_column)
        num_digits = Math.log10(text_units.size).ceil
	ids = text_units.size.times { |i| bn + ("-%0#{num_digits}d" % [i]) }
      end
      return ids.zip(text_units)
    end
  }
end

# return the list of text units ([id, text] pairs) from all input files
def read_text_units
  if (Options.input_is_dir)
    Dir[Options.input + '/*'].collect_concat { |f|
      read_text_units_from_file(f)
    }
  else # input is file
    read_text_units_from_file(Options.input)
  end
end

#
# TripsModule for connecting to each TRIPS instance (and starting/stopping it)
#

$: << ENV['TRIPS_BASE'] + '/etc'
require 'TripsModule/trips_module'

class StepParseFiles
  include TripsModule
  include Timeout

  attr_reader :thread

  def initialize(logdir, port, text_units)
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
    @text_units = text_units
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
    @text_units.each { |id, text|
      @last_story_id = id
      output_file = "#{@logdir}/#{id}.xml"
      $stderr.puts "starting #{id}..."
      times = Benchmark.measure {
	reply =
	  timeout(Options.timeout) {
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

#
# Main program
#

port2module = Array.new(Options.num_tripses)

text_units = read_text_units()

num_batches = (text_units.size * 1.0 / Options.batch_size).ceil

$stderr.puts "read #{text_units.size} text units, will parse in #{num_batches} batches"

tw = ThreadsWait.new

num_digits = Math.log10(num_batches).ceil
num_batches.times { |batch_num|
  logdir = "batch%0#{num_digits}d" % [batch_num]
  unless (File.exists?(logdir)) # already did this one
    batch_text_units =
      text_units[batch_num * Options.batch_size, Options.batch_size]
    # try to start this batch by assigning it to the first available
    # thread/module/TRIPS instance/port
    started = false
    begin
      port2module.each_with_index { |mod, port|
	if (mod.nil? or not mod.alive?)
	  port2module[port] =
	    StepParseFiles.new(logdir, port + Options.port_base,
			       batch_text_units)
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

if (Options.output_archive)
  # pack up the resulting .xml files in a .tar.bz2 file named like this dir, and
  # put it up on the web
  pwd_name = File.basename(Dir.pwd)
  system(
    "cd .. " +
    "&& find #{pwd_name} -name '*.xml' " +
    "| grep -v '/old' " +
    "| tar -jcvf #{pwd_name}.tar.bz2 -T - " +
    (Options.output_archive_dir ?
      "&& cp #{pwd_name}.tar.bz2 #{Options.output_archive_dir}" : "")
  )
end

