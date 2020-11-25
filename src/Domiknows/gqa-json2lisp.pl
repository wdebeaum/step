#!/usr/bin/perl -p

# gqa-json2lisp.pl - convert a JSON file from the GQA dataset to something that can be read as a Lisp expression
# William de Beaumont
# 2020-06-18

s/\btrue\b,?/T /g;
s/\b(false|null)\b,?/NIL /g;
s/(?<=[\d"}\]]),/ /g;
s/[{\[]/(/g;
s/[}\]]/)/g;
s/"([\d:]+)":/:|$1| /g;
s/"(\w+)":/:$1/g;
