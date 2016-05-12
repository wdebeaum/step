#
# common.mk for config/scala
#
# William de Beaumont, wbeaumont@ihmc.us, 2015-04-01
# $Id: common.mk,v 1.1 2015/04/02 19:57:54 wdebeaum Exp $
#
# Code common to building and installing Scala libraries and programs.
#
# Note special care needed when dealing with class filenames that may include
# dollar signs (`$'). This happens a lot in Scala with companion objects.

# Class files with PACKAGE_DIR added and dollar-signs escaped
CLASS_FILES = $(foreach file,$(CLASSES),$(PACKAGE_DIR)/$(subst $$,\$$,$(file)))
XTRA_FILES = $(foreach file,$(XTRA),$(PACKAGE_DIR)/$(file))
PACKAGE_FILES = $(CLASS_FILES) $(XTRA_FILES)

# This is the PACKAGE as a directory with slashes.
#  For example, is TRIPS.Foo is the value of PACKAGE this will be TRIPS/Foo
PACKAGE_DIR = $(subst .,/,$(PACKAGE))

# Basic target for compiling java files
.SUFFIXES: .scala .class
.scala.class:
	$(SCALAC) $(SFLAGS) ${PACKAGE_DIR}/$<

# Default target if this file gets included first
all::

# Scaladoc
doc:: doc/index.html

doc/index.html: $(SRCS)
	test -d doc || mkdir doc
	$(SCALADOC) -d doc $(PACKAGE)

