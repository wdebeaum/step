# Makefile for installing ParserFilter in TRIPS

MAIN	= ParserFilter
PACKAGE	= TRIPS.TextTagger.StanfordParser
SRCS	= ParserFilter.java
CLASSES = $(SRCS:.java=.class)

CONFIGDIR=../../config
include $(CONFIGDIR)/java/prog.mk
include $(CONFIGDIR)/TextTagger/defs.mk

ifeq (,$(TEXTTAGGER_parser))
$(error Stanford Parser directory not configured)
endif

PARSER_JAR = $(wildcard $(TEXTTAGGER_parser)stanford-parser.jar)
ifeq (,$(PARSER_JAR))
$(error can\'t find Stanford Parser jar file)
endif

JFLAGS	= -cp $(PARSER_JAR)
EXTRA_JAVA_FLAGS	= -Xmx500m -DTRIPS.TEXTTAGGER_parser=$(TEXTTAGGER_parser)
EXTRA_CLASSPATH	= $(PARSER_JAR)

