#
# config/python/lib.mk
#
# $Id: lib.mk,v 1.4 2019/04/30 15:06:05 wdebeaum Exp $
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
VIRTUALENV=$(dir $(shell readlink `which $(PIP)` || which $(PIP)))virtualenv
VENV_DIR=$(etcdir)/venv
VENV_SH=$(VENV_DIR)/bin/activate
$(info VIRTUALENV=$(VIRTUALENV))
$(info VENV_DIR=$(VENV_DIR))
$(info VENV_SH=$(VENV_SH))

$(VIRTUALENV):
	sudo $(PIP) install virtualenv

$(VENV_SH): $(VIRTUALENV)
	$(MKINSTALLDIRS) $(VENV_DIR)
	# pip refuses to install its own virtualenv if it's already installed
	# somewhere, but still "succeeds" in that case, so try to use pip's own
	# virtualenv, but if it doesn't exist, fall back to whatever is in the
	# path. Also make sure it's using the configured python executable.
	if test -e $(VIRTUALENV) ; then \
	  $(VIRTUALENV) -p $(PYTHON) $(VENV_DIR) ; \
	else \
	  virtualenv -p $(PYTHON) $(VENV_DIR) ; \
	fi

install:: $(REQUIREMENTS) $(VENV_SH)
	# NOTE: this uses pip, not $(PIP), so that it uses venv's pip
	. $(VENV_SH) ; pip install -r $<
endif
