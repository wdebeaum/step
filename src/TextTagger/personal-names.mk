#
# Rules for those using the PersonalNames tagger
#
all:: personal-names.tsv

install:: personal-names.tsv
	$(INSTALL_DATA) $< $(etcdir)/$(MODULE)

downloads/names.zip:
	$(call download_compressed,https://www.ssa.gov/oact/babynames/names.zip)

personal-names.tsv: get-personal-names.sh downloads/names.zip
	./$^ >$@

