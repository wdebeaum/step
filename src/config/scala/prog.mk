#
# scala/prog.mk : Build a Scala program for the TRIPS System
#
# William de Beaumont, wbeaumont@ihmc.us, 2015-04-01
# $Id: prog.mk,v 1.1 2015/04/02 19:57:55 wdebeaum Exp $
#
# This should be included in your Makefile if you are building
# a program (i.e., something that runs).  If you are making a library
# (i.e., a JAR file) you should include lib.mk instead.
#
# The following should be defined before this file is included:
#  MAIN - The main class (ie., the one with main())
#  PACKAGE - The package that the main class is in
#  USES - List of other packages that this need to find
#  SRCS - The Scala source files to compile
#  CLASSES - The Scala class files to include in the jar
#  XTRA - Other files to be included in the jar for this app
#  XTRA2 - More files, included without pathname translation
#
#  SFLAGS - Arguments for SCALAC
#  EXTRA_SCALA_FLAGS - Arguments for SCALA
#  EXTRA_CLASSPATH - Stuff to be added to CLASSPATH at runtime
#

include $(CONFIGDIR)/version.mk
include $(CONFIGDIR)/defs.mk
include $(CONFIGDIR)/scala/defs.mk
include $(CONFIGDIR)/scala/common.mk

WRAPPER = $(CONFIGDIR)/scala/run-scala-app.sh

PROG = $(MAIN)

all:: $(PROG)

$(PROG):: $(PACKAGE).jar $(WRAPPER)
	sed -e 's@TRIPS_BASE_DEFAULT=.*$$@TRIPS_BASE_DEFAULT=$(prefix)@' \
	    -e 's@SCALA=.*@SCALA=$(SCALA)@' \
	    -e 's@CP_SEP=.*@CP_SEP="$(CP_SEP)"@' \
	    -e 's@TARGET=.*@TARGET="$(TARGET)"@' \
	    -e 's@PACKAGE=.*@PACKAGE=$(PACKAGE)@' \
	    -e 's@MAIN=.*@MAIN=$(MAIN)@' \
	    -e 's@USES=.*@USES="$(USES)"@' \
	    -e 's@EXTRA_SCALA_FLAGS=.*@EXTRA_SCALA_FLAGS="$(EXTRA_SCALA_FLAGS)"@' \
	    -e 's@EXTRA_CLASSPATH=.*@EXTRA_CLASSPATH="$(EXTRA_CLASSPATH)"@' \
	    -e "s@TRIPS_VERSION@$(TRIPS_VERSION)@" \
	    $(WRAPPER) >$(PROG)
	chmod a+x $(PROG)

install:: $(PROG) jar
	$(MKINSTALLDIRS) $(bindir)
	$(INSTALL_PROGRAM) $(PROG) $(bindir)
	$(MKINSTALLDIRS) $(etcdir)/java
	$(INSTALL_DATA) $(PACKAGE).jar $(etcdir)/java

jar:: $(PACKAGE).jar

MANIFEST = MANIFEST.MF
$(MANIFEST): Makefile
	echo "Main-Class: $(PACKAGE).$(MAIN)" >$(MANIFEST)

$(PACKAGE).jar:: $(SRCS:.scala=.class) $(MANIFEST)
	cd $(prefix); $(JAR) cvfm ${PACKAGE_DIR}/$(PACKAGE).jar ${PACKAGE_DIR}/$(MANIFEST) $(PACKAGE_FILES) $(XTRA2)

clean::
	rm -f $(PROG) $(PACKAGE).jar $(MANIFEST)
	cd $(prefix) ; rm -f $(CLASS_FILES)

run::
	$(SCALA) $(EXTRA_SCALA_FLAGS) $(PACKAGE).$(MAIN) $(ARGV)

test::
	$(SCALA) $(EXTRA_SCALA_FLAGS) $(PACKAGE).$(MAIN) -connect nil $(ARGV)

