#!/usr/bin/perl

# reformat-lisp-sgs.pl - reformat saved lisp typed scene graphs so that they match the original (lowercase, no pipequotes, () instead of NIL, two space K&R-style indents)

use strict vars;

my $whole = <>;
$whole = lc($whole);
$whole =~ s/:\|(\d+)\|/:$1/g;
my @parts = split(/([\(\)]| :)/, $whole);
my $indent = 0;
my $prev_was_paren = 0;
for my $part (@parts) {
  if ($part eq '(') {
    print "\n" . (' 'x$indent) if ($prev_was_paren eq ')');
    $indent += 2;
    print $part . "\n" . (' 'x$indent);
    $prev_was_paren = $part;
  } elsif ($part eq ')') {
    $indent -= 2;
    print "\n" . (' 'x$indent) . $part;
    $prev_was_paren = $part;
  } elsif ($part eq ' :') {
    print "\n" . (' 'x$indent) . ':';
    $prev_was_paren = 0;
  } else {
    $part =~ s/^ //;
    $part =~ s/\bnil\b/()/g;
    print $part;
    $prev_was_paren = 0 unless ($part eq '');
  }
}
