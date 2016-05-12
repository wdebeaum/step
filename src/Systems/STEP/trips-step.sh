#!/bin/sh
#
# trips-step: Run TRIPS/step
#
# This script uses the following environment variables, if set:
#  TRIPS_BASE			Root of TRIPS directory tree
#  TRIPS_SPEECH_IN_HOST		Where to run Sphinx and SpeechPP
#  TRIPS_USER_SEX		Starts speech recognition (m or f)
#  TRIPS_SCENARIO		Sets scenario (pacifica|monroe|calo|lou)
#  TRIPS_LOGS			Where to save the logs
# Run with -help to see the usage message.
#

echo 'This is TRIPS/STEP version 0'
TRIPS_BASE_DEFAULT=/usr/local/trips

# Set TRIPS_BASE unless set
if test ! -z "$TRIPS_BASE"; then
    echo "Using your TRIPS_BASE=\"$TRIPS_BASE\""
else
    TRIPS_BASE=$TRIPS_BASE_DEFAULT; export TRIPS_BASE
    echo "Using TRIPS_BASE=\"$TRIPS_BASE\""
fi

TRIPS_HOST_DEFAULT=localhost
TRIPS_PORT_DEFAULT=6200

#############################################################################
#
# Command-line

usage='trips-step [-display tty] [-debug true] [-port 6200] [-nolisp] [-graphviz-display true] [-with-ner <classifier>] [-logdir DIR]'

logdir=''
debug=false
port=''
display=''
nolisp=''
graphviz_display=false

while test ! -z "$1"; do
    case "$1" in
	-port)		port="$2";	shift;;
	-display)	display="$2";	shift;;
	-logdir)	logdir="$2";	shift;;
	-debug)		debug="$2";	shift;;
	-nolisp)	nolisp=t;;
	-graphviz-display)    graphviz_display="$2";	shift;;
	-with-ner)      export NER_CLASSIFIER="$2"; shift;;
	-help|-h|-\?)
	    echo "usage: $usage"
	    exit 0;;
	*)
	    echo "$0: unknown argument: $1" 1>&2
	    echo "usage: $usage" 1>&2;
	    exit 1;;
    esac
    shift
done

# set port options
TRIPS_PORT=${port:-$TRIPS_PORT_DEFAULT}
TRIPS_SOCKET=${TRIPS_HOST_DEFAULT}:${TRIPS_PORT}
export TRIPS_SOCKET
port_opt="-connect $TRIPS_SOCKET"

# set default character encoding to UTF-8 since the test paragraphs have
# multibyte characters
export LC_ALL=en_US.UTF-8
export JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8

# Make sure log directory exists
if test -z "$logdir"; then
    logdir=${TRIPS_LOGS:-`pwd`}/`date '+%Y%m%dT%H%M'`
fi
if test -d "$logdir"; then
    echo "Using log directory $logdir"
else
    echo "Creating log directory $logdir"
    mkdir -p "$logdir" || exit 1
fi
cd "$logdir" || exit 1

#############################################################################
#
# Here we go...
#

# Clean up any child process when we die
# Note [LG, 2011/03/11]: We used to use pkill to kill subprocesses. Turns out 
# this was not working well on Macs (for reasons i won't get into). 
# The solution below uses just ps and awk, which should be available on all the
# platforms we currently use. However, there are different implementations of 
# ps and awk out there; this code was only tested on my Mac (10.6.6).
trap cleanup 0 1 2 3 15

cleanup () {
    rm -f /tmp/trips$$
    rkill $$
    # will never get here
}

rkill() {
    for cpid in $(ps -o pid,ppid | awk -v ppid=$1 '$2==ppid {print $1}')
    do
	rkill $cpid
    done
    #echo "killing: $(ps -o pid=,command= $1 )"
    kill -9 $1 > /dev/null 2>&1
}

# The following will be sent to the facilitator (via stdin) once it starts
cat - <<_EOF_ >/tmp/trips$$
(register :name init)
(tell :content (status ready))
(request
 :receiver facilitator
 :content (start-module
           :name RDFMatcher
           :class TRIPS.RDFMatcher.RDFMatcher
           :urlclasspath `$TRIPS_BASE/bin/RDFMatcher classpath`
	   :argv ($port_opt)
))
_EOF_

# Modules not started by the java process have to start *after* the
# Facilitator so they can connect, so we use the form (sleep 5; foo) &
# to start them

# Lisp
if test -z "$nolisp"; then
(sleep 5; $TRIPS_BASE/bin/trips-step-lisp) 2>&1 | tee lisp.log &
fi

# Start TextPP
(sleep 5; $TRIPS_BASE/bin/TextPP $port_opt -log true 2>&1 | tee TextPP.err) &

# Start TextTagger
(sleep 5; $TRIPS_BASE/bin/TextTagger \
  $port_opt \
  -process-input-utterances yes \
  -init-taggers terms,named-entities,stanford_pos,stanford_parser,alternate_spellings,word-net,personal-names \
  -default-type [or \
    affixes \
    terms \
    words \
    punctuation \
    named_entities \
    street_addresses \
    capitalized_names \
    alphanumerics \
    quotations \
    alternate_spellings \
    [and stanford_pos pos] \
    stanford_parser \
    word-net \
    personal-names \
    ] \
  2>&1 | tee TextTagger.err) &

# Start Graphviz
(sleep 5; $TRIPS_BASE/bin/Graphviz $port_opt -display-enabled $graphviz_display 2>&1 | tee Graphviz.err) &

# Start SkeletonScore
(sleep 5; $TRIPS_BASE/bin/SkeletonScore $port_opt 2>&1 | tee SkeletonScore.err) &

# set display option for facilitator
if test -n "$display"; then
    display_opt="-display $display"
else
    display_opt=''
fi

# Launch facilitator and send initial messages via stdin
cat /tmp/trips$$ |\
 $TRIPS_BASE/bin/Facilitator -port $TRIPS_PORT -title 'STEP' -geometry 260x600-0+0 $display_opt 2>&1 | tee facilitator.err &
facilitatorPID=$!

# Wait for Facilitator to die
wait $facilitatorPID

# Bye
exit 0
