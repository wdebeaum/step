# Makefile for installing POSFilter in TRIPS

MAIN	= POSFilter
PACKAGE	= TRIPS.TextTagger.StanfordPOSTagger
SRCS	= POSFilter.java
CLASSES = $(SRCS:.java=.class)

CONFIGDIR=../../config
include $(CONFIGDIR)/java/prog.mk
include $(CONFIGDIR)/TextTagger/defs.mk

ifeq (,$(TEXTTAGGER_postagger))
$(error Stanford POS Tagger directory not configured)
endif

POSTAGGER_JAR = $(wildcard $(TEXTTAGGER_postagger)stanford-postagger.jar)
ifeq (,$(POSTAGGER_JAR))
$(error can\'t find Stanford POS Tagger jar file)
endif

JFLAGS	= -cp $(POSTAGGER_JAR)
EXTRA_JAVA_FLAGS	= -Xmx450m -DTRIPS.TEXTTAGGER_postagger=$(TEXTTAGGER_postagger)
EXTRA_CLASSPATH	= $(POSTAGGER_JAR)

