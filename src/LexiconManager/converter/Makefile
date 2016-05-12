#
# File: Makefile
# Creator: George Ferguson
# Created: Wed Jun 20 09:40:32 2012
# Time-stamp: <Wed Jun 20 10:07:03 EDT 2012 ferguson>
#

OLD_LEX_INPUTS = \
	../Data/old/nouns-vocab.lisp \
	../Data/old/vocab.lisp \
	../Data/old/adj-vocab.lisp \
	../Data/old/other-adverbs.lisp \
	../Data/old/pronouns.lisp \
	../Data/old/time-and-space-adverbs.lisp \
	../Data/old/values.lisp \
	../Data/old/fnwords.lisp

NEW_DATA_DIR = new-data

BASE500_LEX_INPUTS = ../Data/base500/*.lisp
BASE500_DATA_DIR = base500-data
BASE500_INDEX = $(BASE500_DATA_DIR)/index.txt
BASE500_ARGS = --base500 $(BASE500_INDEX)

CONVERT = ./convert.pl

$(NEW_DATA_DIR): $(OLD_LEX_INPUTS) $(CONVERT) $(BASE500_INDEX)
	rm -rf $@
	mkdir -p $@
	$(CONVERT) --prefix $@ $(BASE500_ARGS) $(OLD_LEX_INPUTS) | tee /dev/tty | sort -f | uniq -i >$@/index.txt

$(BASE500_DATA_DIR): $(BASE500_LEX_INPUTS) $(CONVERT)
	rm -rf $@
	mkdir -p $@
	$(CONVERT) --prefix $@ $(BASE500_LEX_INPUTS) | tee /dev/tty | sort -f | uniq -i >$@/index.txt

$(BASE500_INDEX): $(BASE500_DATA_DIR)

clean:
	rm -rf $(NEW_DATA_DIR) $(BASE500_DATA_DIR)

.DUMMY: $(NEW_DATA_DIR) $(BASE500_DATA_DIR)
