MODULE=SkeletonScore
USES=TRIPS.TripsModule TRIPS.KQML TRIPS.util
MAIN=SkeletonScore.py
SRCS=SkeletonScore.py

SUBDIRS=library

CONFIGDIR=../config
include $(CONFIGDIR)/python/prog.mk

.git:
	git init .
	git remote add origin https://github.com/mrmechko/SkeletonScore.git

all:: .git
	git pull origin master
	$(MKINSTALLDIRS) $(etcdir)/Data
	cp predmap.txt $(etcdir)/Data/gold.predmap.complete
	cp predmap.txt $(etcdir)/Data/gold.predmap
	$(PIP) install --user -r requirements.txt
