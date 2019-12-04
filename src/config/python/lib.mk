#
# config/python/lib.mk
#
# $Id: lib.mk,v 1.8 2019/12/03 22:02:42 wdebeaum Exp $
#
# The following should be defined before this file is included:
#  MODULE - The name of this TRIPS module
#  SRCS - The Python source files to install
#

include $(CONFIGDIR)/version.mk
include $(CONFIGDIR)/defs.mk
include $(CONFIGDIR)/python/defs.mk

all default::

clean::

install::
	$(MKINSTALLDIRS) $(etcdir)/$(MODULE)
	$(INSTALL_DATA) $(SRCS) $(etcdir)/$(MODULE)

# if we have requirements, install them in a virtualenv dir
ifdef REQUIREMENTS

# We install our own local copy of the virtualenv package just to avoid
# headaches trying to find the existing global one and/or install one with
# sudo (which the user may not have permission to do). This also has the
# advantage that this virtualenv will use the same version of python as the
# configured pip by default.
# https://xkcd.com/1987/
VIRTUALENV=$(prefix)/bin/virtualenv
VENV_DIR=$(etcdir)/venv
VENV_SH=$(VENV_DIR)/bin/activate

$(VIRTUALENV):
	$(PIP) install --ignore-installed --prefix=$(prefix) virtualenv

$(VENV_SH): $(VIRTUALENV)
	$(MKINSTALLDIRS) $(VENV_DIR)
	PYTHONPATH='$(wildcard $(prefix)/lib/python*/site-packages)' $(VIRTUALENV) $(VENV_DIR)

# NOTE: this uses "pip", not "$(PIP)", so that it uses venv's pip
install:: $(REQUIREMENTS) $(VENV_SH)
	. $(VENV_SH) ; pip install -r $<

endif
