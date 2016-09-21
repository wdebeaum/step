#
# configure.ac for python
#
# $Id: configure.ac,v 1.2 2016/09/20 21:08:51 wdebeaum Exp $
#
# Process this file with autoconf to produce a configure script.
#

AC_INIT(TRIPS-config-python, 2016-09-20, wbeaumont@ihmc.us)
AC_CONFIG_SRCDIR([defs.mk.in])
AC_CONFIG_AUX_DIR([../auto])

AC_ARG_WITH(python,
	    AC_HELP_STRING([--with-python],
			   [specify Python interpreter]),
	    AC_SUBST(PYTHON, $withval),
	    AC_CHECK_PROGS(PYTHON, python python2.7 python-2.7 python3.5 python-3.5, python))

AC_ARG_WITH(pip,
	    AC_HELP_STRING([--with-pip],
			   [specify pip (Python package manager) executable]),
	    AC_SUBST(PIP, $withval),
	    AC_CHECK_PROGS(PIP, pip pip2.7 pip-2.7 pip3.5 pip-3.5, pip))

AC_CONFIG_FILES([Makefile defs.mk])
AC_OUTPUT
