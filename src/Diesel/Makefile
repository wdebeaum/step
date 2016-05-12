CONFIGDIR=../config
include $(CONFIGDIR)/defs.mk

all: xml diesel.jar

xml: xml.zip
	unzip -q xml.zip
	mv flaming-tyrion-master xml

xml.zip:
	curl -L --progress-bar --output xml.zip github.com/mrmechko/flaming-tyrion/archive/master.zip
	

diesel.jar:
	curl -L --progress-bar --output diesel.jar diesel.mechko.org


install: diesel.jar xml
	cp diesel.jar $(etcdir)/java
	cp -r xml $(etcdir)/XMLTrips

clean:
	rm -rf *.jar
	rm -rf *.zip
	rm -rf xml
