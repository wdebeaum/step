CONFIGDIR=../config
include $(CONFIGDIR)/defs.mk

# Dependencies, passed in as SFLAGS.
# all:: makes sure the jars are built
DIESEL=$(prefix)/src/Diesel
KQML=$(prefix)/src/KQML
TRIPS_MODULE=$(prefix)/src/TripsModule

MAIN=SkeletonScore
PACKAGE=TRIPS.SkeletonScore
USES=TRIPS.TripsModule TRIPS.KQML TRIPS.util diesel
SFLAGS=-classpath $(DIESEL)/diesel.jar:$(KQML)/TRIPS.KQML.jar:$(TRIPS_MODULE)/TRIPS.TripsModule.jar
EXTRA_SCALA_FLAGS=-Ddiesel.tripsRootPath=$(etcdir)/XMLTrips -Ddiesel.tripsXML=$(etcdir)/XMLTrips -Ddiesel.lispOntology=$(etcdir)/XMLTrips/

SRCS=SkeletonScore.scala

CLASSES=$(SRCS:.scala=.class) SkeletonScore$$.class

CONFIGDIR=../config


all::
	if test ! -e $(DIESEL)/diesel.jar ; then cd $(DIESEL) && make all; fi
	if test ! -e $(KQML)/TRIPS.KQML.jar ; then cd $(KQML) && make java; fi
	if test ! -e $(TRIPS_MODULE)/TRIPS.TripsModule.jar ; then cd $(TRIPS_MODULE) && make java; fi

install::
	cp $(etcdir)/XMLTrips/*.dtd $(bindir)
	mkdir -p $(etcdir)/XMLTrips/src/OntologyManager/Data/LFdata
	#cp ../OntologyManager/Data/LFdata/feature*.lisp $(etcdir)/XMLTrips/src/OntologyManager/Data/LFdata

include $(CONFIGDIR)/scala/prog.mk
