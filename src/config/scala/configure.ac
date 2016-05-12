#
# configure.ac for scala
#
# William de Beaumont, wbeaumont@ihmc.us, 2015-04-01
# $Id: configure.ac,v 1.1 2015/04/02 19:57:55 wdebeaum Exp $
#
# Process this file with autoconf to produce a configure script.
#

AC_INIT(TRIPS-config-scala, 2015-04-01, wbeaumont@ihmc.us)
AC_CONFIG_SRCDIR([defs.mk.in])
AC_CONFIG_AUX_DIR([../auto])

# Note: we use JAR, and TARGET from src/config/java/ for scala too

# scala
AC_ARG_WITH(scala, AC_HELP_STRING([--with-scala],
		  		  [specify Scala interpreter (default "scala")]),
		   AC_SUBST(SCALA, $withval),
		   AC_CHECK_PROGS(SCALA, scala scala-2.11, scala))

# scalac
AC_ARG_WITH(scalac, AC_HELP_STRING([--with-scalac],
		  		  [specify Scala compiler (default "scalac")]),
		   AC_SUBST(SCALAC, $withval),
		   AC_CHECK_PROGS(SCALAC, scalac scalac-2.11, scalac))

# scaladoc
AC_ARG_WITH(scaladoc, AC_HELP_STRING([--with-scaladoc],
		  		    [specify Scala doc processor (default "scaladoc")]),
		   AC_SUBST(SCALADOC, $withval),
		   AC_CHECK_PROGS(SCALADOC, scaladoc scaladoc-2.11, scaladoc))

# scalac has problems with the TRIPS symlink like javac used to have on Mac OS
# X and Windows/Cygwin, so we use the same solution: change the "real" name of
# $prefix/src/ to TRIPS (and symlink src to it), and add "cd $prefix; " to the
# beginning of the affected scala commands

AC_SUBST(SCALAC, "cd $prefix; $SCALAC")
AC_SUBST(SCALADOC, "cd $prefix; $SCALADOC")

if test -d ../../../TRIPS; then
  AC_MSG_NOTICE([toplevel directory already adjusted])
else
  AC_MSG_NOTICE([adjusting toplevel directory name])
  mv ../../../src ../../../TRIPS
  ln -s TRIPS ../../../src
  echo 'Renamed src to TRIPS and symlinked, because scala does not handle symlinks properly on this OS' >../../../README.txt
fi

AC_CONFIG_FILES([Makefile defs.mk])
AC_OUTPUT

