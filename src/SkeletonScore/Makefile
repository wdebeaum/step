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

all:: .git xml/MADE
	git pull origin master
	$(MKINSTALLDIRS) $(etcdir)/Data
	cp predmap.txt $(etcdir)/Data/gold.predmap.complete
	cp predmap.txt $(etcdir)/Data/gold.predmap
	$(PIP) install --user -r requirements.txt

xml/MADE: xml.zip
	rm -rf xml
	unzip -q xml.zip
	mv flaming-tyrion-master xml
	touch $@

xml.zip:
	curl -L --progress-bar --output xml.zip github.com/mrmechko/flaming-tyrion/archive/master.zip
	
install:: xml/MADE
	rm -rf $(etcdir)/XMLTrips
	cp -r xml $(etcdir)/XMLTrips

clean::
	rm -rf xml
	
distclean:: clean
	rm -rf xml.zip .git .bumpversion.cfg .gitignore README.MD SkeletonScore.py predmap.txt requirements.txt

