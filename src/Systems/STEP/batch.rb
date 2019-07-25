#!/usr/bin/env ruby

# batch.rb - process a big batch of short (sentence- or paragraph-length) text units in parallel
# 2018-11-08
# William de Beaumont
#
# Run "./batch.rb --help" for usage information.

require_relative '../core/batch.rb'

Options.extra_banner = <<EOB
NOTE: besides the usual STEP checkout, you also need to get these directories
before you configure and build STEP for use with this program:
  $TRIPS_BASE/src/WebParser/
  $TRIPS_BASE/src/config/ruby/
If you got STEP using CVS, you can get these with:
  cd $TRIPS_BASE/src/
  cvs update -d WebParser config/ruby
If you got STEP using git, you can get WebParser from its own github repo:
  https://github.com/wdebeaum/WebParser
and you can copy src/config/ruby/ from the cogent github repo:
  https://github.com/wdebeaum/cogent

EOB

Options.port_base = 6230
Options.trips_exe = 'trips-step'
Options.trips_argv = %w{-display none}
Options.wait_for = 'SKELETONSCORE'
Options.web_parser_name = 'step'
#Options.web_parser_params = { :"semantic-skeleton-scoring" => "on" }

Presets.merge!({
  'rocstories2015' => {
    desc: "Nasrin's ROCStories data, version 3 (from 2015-12)",
    argv: %w{--drop-headings --id-columns=1 --text-columns=4-}
  },
  'rocstories2016' => {
    desc: 'the Spring 2016 version',
    argv: %w{--drop-headings --id-columns=1 --text-columns=3-}
  },
  'rocstories2017' => {
    desc: 'the Winter 2017 version',
    argv: %w{--drop-headings --id-columns=1 --text-columns=3- --input-file-format=csv}
  },
  'cloze' => {
    desc: "Nasrin's Cloze Test data",
    argv: %w{--drop-headings --id-columns=1 --text-columns=2-7}
  },
  'obdata' => {
    desc: 'the data Omid sent me on 2016-01-04',
    argv: %w{--one-text-unit-per-file}
  },
  'obfiles' => {
    desc: 'the data Omid sent me on 2016-06-20',
    argv: %w{--input-file-format=txt"}
  }
})

main()

