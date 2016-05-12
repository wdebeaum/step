#
# scala/lib.mk : Build a Scala library for the TRIPS System
#
# William de Beaumont, wbeaumont@ihmc.us, 2015-04-01
# $Id: lib.mk,v 1.1 2015/04/02 19:57:55 wdebeaum Exp $
#
# This should be included in your Makefile if you are building
# a library (i.e., a JAR file).  If you are making a program
# you should include prog.mk instead.
#
# The following should be defined before this file is included:
#  PACKAGE - The name for this package, ie., its TRIPS directory name
#  SRCS - The Scala source files to compile
#  CLASSES - The Scala class files, including inner classes
#  SFLAGS - Arguments for SCALAC
#

include $(CONFIGDIR)/version.mk
include $(CONFIGDIR)/defs.mk
include $(CONFIGDIR)/scala/defs.mk
include $(CONFIGDIR)/scala/common.mk

all:: $(PACKAGE).jar

jar:: $(PACKAGE).jar

$(PACKAGE).jar:: $(SRCS:.scala=.class)
	cd $(prefix); $(JAR) cvf ${PACKAGE_DIR}/$(PACKAGE).jar $(PACKAGE_FILES)

clean::
	rm -f $(PACKAGE).jar $(MANIFEST)
	cd $(prefix); rm -f $(PACKAGE_FILES)

install:: $(PACKAGE).jar
	$(MKINSTALLDIRS) $(etcdir)/java
	$(INSTALL_DATA) $(PACKAGE).jar $(etcdir)/java

