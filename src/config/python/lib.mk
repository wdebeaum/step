#
# config/python/lib.mk
#
# $Id: lib.mk,v 1.1 2015/11/13 00:00:36 wdebeaum Exp $
#
# The following should be defined before this file is included:
#  MODULE - The name of this TRIPS module
#  SRCS - The Python source files to install
#

include $(CONFIGDIR)/version.mk
include $(CONFIGDIR)/defs.mk

all default::

clean::

install::
	$(MKINSTALLDIRS) $(etcdir)/$(MODULE)
	$(INSTALL_DATA) $(SRCS) $(etcdir)/$(MODULE)
