#!/bin/sh
#
# run-scala-app.sh: Shell script wrapper for launching a Scala app
#
# William de Beaumont, wbeaumont@ihmc.us, 2015-04-01
# $Id: run-scala-app.sh,v 1.2 2016/01/26 15:07:07 wdebeaum Exp $
#
# This file will be customized for a specific application by setting
# the variables at the top of the file. If this file's name is not
# "run-scala-app.sh", then you are looking at such a customization.
#

# Per-application settings
PACKAGE=TRIPS.Module
MAIN=ModuleApplication
USES="TRIPS.TripsModule TRIPS.KQML TRIPS.util"
EXTRA_SCALA_FLAGS=''
EXTRA_CLASSPATH=''
CP_SEP=''
TARGET=''

# Root of TRIPS installation
TRIPS_BASE_DEFAULT=.
if test -z "$TRIPS_BASE"; then
    TRIPS_BASE=$TRIPS_BASE_DEFAULT
    export TRIPS_BASE
fi

# Java interpreter
if test -z "$SCALA"; then
    SCALA=/usr/bin/scala
fi

# Java archives used by this application
JARS=$TRIPS_BASE/etc/java/$PACKAGE.jar
for pkg in $USES; do
    JARS="$JARS:$TRIPS_BASE/etc/java/$pkg.jar"
done

# CLASSPATH for Java
CLASSPATH=$JARS${EXTRA_CLASSPATH:+:$EXTRA_CLASSPATH}${CLASSPATH:+:$CLASSPATH}
case "$TARGET" in
  *-*-cygwin)
    CLASSPATH=`cygpath -w -p $CLASSPATH`
esac
export CLASSPATH

# Additional properties for Scala
SFLAGS="-DTRIPS.TRIPS_BASE=$TRIPS_BASE $EXTRA_SCALA_FLAGS"

if test "$1" = "classpath" ; then
  echo $CLASSPATH |perl -p -e 's/\\/\\\\/g; s/\"/\\\"/g; s/^/"/; s/$/"/;'
else
  # Run Java
  exec $SCALA $SFLAGS $PACKAGE.$MAIN ${1:+"$@"}
fi

