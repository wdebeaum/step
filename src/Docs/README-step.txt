LISP-only instructions:
(Note that these instructions are for installing and using only the lisp components.
 This is the parser we distribute.  Notes for the full system install are below)

Here's what you need to do to install and use the parser:
- install lisp (note, we use CCL for Mac and CMUCL for Linux, Allegro and SBCL should work as well;
   others may work -- gruesome details at src/config/lisp/porting.html)

- install WordNet according to src/WordFinder/README.txt  (you don't need comlex)

- run ./configure in src

- start lisp and load file src/Systems/STEP/test.lisp

- change to IM package

- parse with p+ref, e.g.,     (p+ref "the cat yawned") 

- to clear discourse state (clear-im-record)  --- this resets to a new "conversation", so that it doesn't try to link to entities that were mentioned in previous parses

- you can convert the parse tree to DOT for visualization in GraphViz
  e.g., (convert-terms-to-dot (p+ref "the cat yawned") nil)  -- then save the string
  to a .dot file and open in GraphViz

-----------------------------------------------------
(Full system instructions:)
STEP: Text understanding (configuration originally derived from PLOW)

- If you want to see the graphical output of this system, you need to
  install the free Graphviz package from http://www.graphviz.org/
  - The system will also build and run without this

- You need the WordFinder resources for wordnet and comlex.
  On URCS linux, they are in /p/nl and will be found automagically.
  Otherwise, see instructions in src/WordFinder/README for how to get 
  and install these

- You need the TextTagger resources (geonames, stanford-ner, stanford-pos)
  As above, on URCS linux they are in /p/nl and will be found
  automagically. Otherwise see instructions in src/TextTagger/README
  for how to get and install these.

- You need Sergey Melnik's similarity flooding graph matcher; see
  ../RDFMatcher/README.txt for instructions.

- Configure with --enable-wordfinder

    ./configure --enable-wordfinder

  - Watch the messages to make sure it finds the resources

- "make" and "make install"

- Go to a working or scratch directory and run:

    .../bin/trips-step -nolisp

  Then, in another terminal or in emacs, start lisp and load
  src/Systems/STEP/test.lisp into it. For example:

    cd .../src/Systems/STEP
    lisp
    (load "test.lisp")

  You're off! 
  Use (test-paragraph "text paragraph") or (test-paragraph 'step3) to invoke.
