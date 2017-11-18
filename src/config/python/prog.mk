#
# config/python/prog.mk
#
# $Id: prog.mk,v 1.3 2017/11/17 17:08:01 wdebeaum Exp $
#
# The following should be defined before this file is included:
#  MODULE - The name of this TRIPS module
#  USES - List of other packages that this need to find
#  MAIN - The main file to run
#  SRCS - The Python source files to install (including MAIN)
#

include $(CONFIGDIR)/python/lib.mk

WRAPPER = $(CONFIGDIR)/python/run-python-app.sh

# Allow override of default executable name
PROG ?= $(MODULE)

all:: $(PROG)

ifdef REQUIREMENTS
$(PROG):: $(WRAPPER)
	sed -e 's@TRIPS_BASE_DEFAULT=.*$$@TRIPS_BASE_DEFAULT=$(prefix)@' \
	    -e 's@PYTHON=.*@PYTHON=python@' \
	    -e 's@PYTHON_FLAGS=.*@PYTHON_FLAGS="$(PYTHON_FLAGS)"@' \
	    -e 's@MODULE=.*@MODULE=$(MODULE)@' \
	    -e 's@VENV_SH@. $(VENV_SH)@' \
	    -e 's@MAIN=.*@MAIN=$(MAIN)@' \
	    $(WRAPPER) >$(PROG)
	chmod a+x $(PROG)
else
$(PROG):: $(WRAPPER)
	sed -e 's@TRIPS_BASE_DEFAULT=.*$$@TRIPS_BASE_DEFAULT=$(prefix)@' \
	    -e 's@PYTHON=.*@PYTHON="$(PYTHON)"@' \
	    -e 's@PYTHON_FLAGS=.*@PYTHON_FLAGS="$(PYTHON_FLAGS)"@' \
	    -e 's@MODULE=.*@MODULE=$(MODULE)@' \
	    -e 's@VENV_SH@@' \
	    -e 's@MAIN=.*@MAIN=$(MAIN)@' \
	    $(WRAPPER) >$(PROG)
	chmod a+x $(PROG)
endif

install:: $(PROG)
	$(MKINSTALLDIRS) $(bindir)
	$(INSTALL_PROGRAM) $(PROG) $(bindir)

clean::
	rm -f $(PROG)

run::
	PYTHONPATH="$$PYTHONPATH:.." JYTHONPATH="$$JYTHONPATH:.." \
	$(PYTHON) $(MAIN) $(ARGV)
