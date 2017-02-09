#!/bin/sh
#
# run-python-app.sh: Shell script wrapper for launching a Python app
#
# $Id: run-python-app.sh,v 1.2 2017/02/08 19:02:43 wdebeaum Exp $
#
# This file will be customized for a specific application by setting
# the variables at the top of the file. If this file's name is not
# "run-python-app.sh", then you are looking at such a customization.
#

# Variables set by component Makefile
MODULE=ModuleName
MAIN=main.pl
PYTHON_FLAGS=

# Root of TRIPS installation
TRIPS_BASE_DEFAULT=.
if test -z "$TRIPS_BASE"; then
    TRIPS_BASE=$TRIPS_BASE_DEFAULT
    export TRIPS_BASE
fi

# Python interpreter
if test -z "$PYTHON"; then
    PYTHON=/usr/bin/python
fi

etcdir="$TRIPS_BASE/etc"
moduledir="$etcdir/$MODULE"

if test -z "$PYTHONPATH" ; then
  PYTHONPATH="$moduledir:$etcdir"
else
  PYTHONPATH="$PYTHONPATH:$moduledir:$etcdir"
fi
export PYTHONPATH

# Run Python
exec $PYTHON $PYTHON_FLAGS "$moduledir/$MAIN" "$@"
