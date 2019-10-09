all:: countries.tsv

install:: countries.tsv
	$(INSTALL_DATA) $< $(etcdir)/$(MODULE)

clean::
	rm -rf countries.tsv

countries.tsv: downloads/countries.json get-countries-tsv.pl
	./get-countries-tsv.pl <$< >$@

downloads/MADE:
	mkdir -p downloads
	touch $@

downloads/countries.json: downloads/MADE
	curl -L -o $@ "https://raw.githubusercontent.com/mledoze/countries/master/countries.json"
	# add "CAR" as synonym for "Central African Republic"
	echo -e "5399a5400\n>             \"CAR\"," |patch $@

