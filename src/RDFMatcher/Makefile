# Makefile for installing RDFMatcher in TRIPS

MAIN	= RDFMatcher
PACKAGE	= TRIPS.RDFMatcher
USES	= TRIPS.TripsModule TRIPS.KQML
SRCS	= RDFMatcher.java
CLASSES = $(SRCS:.java=.class)

CONFIGDIR=../config
include $(CONFIGDIR)/java/prog.mk
include $(CONFIGDIR)/RDFMatcher/defs.mk

JFLAGS	= -cp $(RDFMATCHER_sfa_jar)$(CP_SEP).
# TODO find options for non-sun JREs
EXTRA_JAVA_FLAGS	= -Dorg.xml.sax.parser=com.sun.org.apache.xerces.internal.parsers.SAXParser
EXTRA_CLASSPATH	= $(RDFMATCHER_sfa_jar)

