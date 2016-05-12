
File: README.txt
Creator: George Ferguson
Created: Wed Jun 20 09:33:15 2012
Time-stamp: <Wed Jun 20 10:11:44 EDT 2012 ferguson>

Converter and support files for converting the lexicon data files to a
one-file-per-lemma format.

- convert.pl: Main perl script developed to do this job. One of the
  goals was to preserve the comments in the old lexicon files. I
  initially tried to accomplish this in Lisp, by messing with the
  readtable. Perhaps that would have worked, but in the end the tool
  that worked best was Perl.

- convert.lisp: Partial attempt to do this in Lisp by messing with the
  readtable. No problem reading and picking apart the forms, but more
  difficult to figure out how to print them back out in a READ-able
  way with the comments in the right place. Preserved for posterity.

- Makefile: Targets to process old-style lexicon files and make the
  new-style ones. Also added support for processing the `base500'
  entries so that they get tagged in the new format files.

- new-data: Directory containing the results of conversion. Created
  and/or deleted by make if necessary.

- base500-data: Directory containing the results of converting the
  base500 entries (index file used in the main conversion to tag
  entries). Also created and/or deleted by make.

- test*.lisp: Extracted chunks of old-style lexicon files used during
  development and testing of the converter.
