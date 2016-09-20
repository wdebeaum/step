#
# config/python/prog.mk
#
# $Id: prog.mk,v 1.2 2015/11/13 00:25:19 wdebeaum Exp $
#
# The following should be defined before this file is included:
#  MODULE - The name of this TRIPS module
#  USES - List of other packages that this need to find
#  MAIN - The main file to run
#  SRCS - The Python source files to install (including MAIN)
#

include $(CONFIGDIR)/version.mk
include $(CONFIGDIR)/defs.mk
include $(CONFIGDIR)/python/defs.mk

WRAPPER = $(CONFIGDIR)/python/run-python-app.sh

# Allow override of default executable name
PROG ?= $(MODULE)

all:: $(PROG)

$(PROG):: $(WRAPPER)
	sed -e 's@TRIPS_BASE_DEFAULT=.*$$@TRIPS_BASE_DEFAULT=$(prefix)@' \
	    -e 's@PYTHON=.*@PYTHON="$(PYTHON)"@' \
	    -e 's@PYTHON_FLAGS=.*@PYTHON_FLAGS="$(PYTHON_FLAGS)"@' \
	    -e 's@MODULE=.*@MODULE=$(MODULE)@' \
	    -e 's@USES=.*@USES="$(USES)"@' \
	    -e 's@MAIN=.*@MAIN=$(MAIN)@' \
	    $(WRAPPER) >$(PROG)
	chmod a+x $(PROG)


install:: $(PROG)
	$(MKINSTALLDIRS) $(bindir)
	$(INSTALL_PROGRAM) $(PROG) $(bindir)
	$(MKINSTALLDIRS) $(etcdir)/$(MODULE)
	$(INSTALL_DATA) $(SRCS) $(etcdir)/$(MODULE)

clean::
	rm -f $(PROG)

run::
	PYTHONPATH="$$PYTHONPATH:.." JYTHONPATH="$$JYTHONPATH:.." \
	$(PYTHON) $(MAIN) $(ARGV)
