# Makefile for installing NERFilter in TRIPS

MAIN	= NERFilter
PACKAGE	= TRIPS.TextTagger.StanfordNER
SRCS	= NERFilter.java
CLASSES	= $(SRCS:.java=.class)

CONFIGDIR=../../config
include $(CONFIGDIR)/java/prog.mk
include $(CONFIGDIR)/TextTagger/defs.mk

ifeq (,$(TEXTTAGGER_ner))
$(error Stanford NER directory not configured)
endif

NER_JAR = $(wildcard $(TEXTTAGGER_ner)stanford-ner.jar)
ifeq (,$(NER_JAR))
$(error can\'t find Stanford NER jar file)
endif

JFLAGS	= -cp $(NER_JAR)
EXTRA_JAVA_FLAGS	= -Xmx1024m -DTRIPS.TEXTTAGGER_ner=$(TEXTTAGGER_ner)
EXTRA_CLASSPATH	= $(NER_JAR)

