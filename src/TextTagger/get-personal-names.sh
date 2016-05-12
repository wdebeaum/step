#!/bin/sh

# usage: ./get-personal-names.sh names.zip >personal-names.tsv

# names.zip is from the Social Security Administration:
# https://www.ssa.gov/oact/babynames/limits.html
# and contains CSV files with columns name,gender,frequency, for each year of
# birth since 1880, for all names with more than 5 social security numbers in
# that year.

# personal-names.tsv is a TSV file with columns name\tmale-freq\tfemale-freq,
# for all years combined.

unzip -p $1 yob*.txt \
| perl -n -a -F, -e '
  $h{$F[0]}{$F[1]} += $F[2];
  END {
    for (sort keys %h) {
      print join("\t", $_, ($h{$_}{"M"} || 0), ($h{$_}{"F"} || 0)) . "\n";
    }
  }
'
