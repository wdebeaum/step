MODULE=SkeletonScore
USES=TRIPS.TripsModule TRIPS.KQML TRIPS.util
MAIN=SkeletonScore.py
SRCS=SkeletonScore.py

SUBDIRS=library

CONFIGDIR=../config
include $(CONFIGDIR)/python/prog.mk

all::
	$(PIP) install --user git+git://github.com/mrmechko/diesel-python.git@master
