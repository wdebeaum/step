#
# configure.ac for python
#
# $Id: configure.ac,v 1.1 2015/11/13 00:00:35 wdebeaum Exp $
#
# Process this file with autoconf to produce a configure script.
#

AC_INIT(TRIPS-config-python, 2015-11-12, wbeaumont@ihmc.us)
AC_CONFIG_SRCDIR([defs.mk.in])
AC_CONFIG_AUX_DIR([../auto])

AC_ARG_WITH(python,
	    AC_HELP_STRING([--with-python],
			   [specify Python interpreter]),
	    AC_SUBST(PYTHON, $withval),
	    AC_CHECK_PROGS(PYTHON, jython jython2.7 python, jython))

AC_CONFIG_FILES([Makefile defs.mk])
AC_OUTPUT
