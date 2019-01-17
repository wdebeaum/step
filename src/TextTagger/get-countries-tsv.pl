#!/usr/bin/env perl

# get-countries-tsv.pl - turn countries.json into a TSV file for Countries.pm

use open ':std', ':encoding(UTF-8)'; # ever more encoding paranoia

use Data::Dumper;
use lib "./Perl";
use TextTagger::Escape qw(escape_for_quotes);
use TextTagger::Util qw(remove_duplicates);
use TextTagger::Normalize qw(normalize);

use strict vars;

# FIXME? not bothering to add a dependency on one of the (many) JSON modules
# for Perl; instead depending on the exact format of this file

my %norm2unnorm2infos = ();

sub json_string_to_perl {
  my $str = shift;
  $str =~ s/\\(["\\\/bfnrt])|\\u([0-9A-Fa-f]{4})/
    eval($1 ? "\"$&\"" : "\"\\N{U+$2}\"")
  /ge;
  return $str;
}

my $info;
while (<>) {
  if (/^\t\{/) {
    $info = { type => 'country' };
  } elsif (/^\t\t\t"(common|official)": "([^"]+)"/) {
    $info->{$1} = json_string_to_perl($2);
  } elsif (/^\t\t"altSpellings": \[([^\[\]]+)\]/) {
    my $list = $1;
    $list =~ s/^"|"$//g;
    $info->{altSpellings} =
      [map { json_string_to_perl($_) } split(/",\s*"/, $list)];
  } elsif (/^\t\t"(capital|(?:sub)?region|demonym)": "([^"]+)"/) {
    $info->{$1} = json_string_to_perl($2);
  } elsif (/^\t\t"cca2": "(\w\w)"/) {
    $info->{code} = json_string_to_perl($1);
  } elsif (/^\t\}/) {
    unless (exists($info->{code})) {
      print STDERR "country has no code!\n";
      print STDERR Data::Dumper->Dump([$info],['*info']);
      next;
    }
    my $names = remove_duplicates([
      grep { defined($_) }
           ($info->{common}, $info->{official}, @{$info->{altSpellings}})
    ]);
    for my $unnorm (@$names) {
      my $norm = normalize($unnorm);
      push @{$norm2unnorm2infos{$norm}{$unnorm}}, $info;
    }
    for my $part (qw(capital)) { # originally thought demonym belonged here
      push @{$norm2unnorm2infos{normalize($info->{$part})}{$info->{$part}}},
      	   +{ type => $part, country => $info->{code} }
	if (exists($info->{$part}));
    }
    for my $part (qw(region subregion demonym)) {
      if (exists($info->{$part})) {
	my $unnorm = $info->{$part};
	my $norm = normalize($unnorm);
	my ($part_info) =
	  grep { $_->{type} eq $part } @{$norm2unnorm2infos{$norm}{$unnorm}};
	unless (defined($part_info)) {
	  $part_info = +{ type => $part, countries => [] };
	  push @{$norm2unnorm2infos{$norm}{$unnorm}}, $part_info;
	}
	push @{$part_info->{countries}}, $info->{code};
      }
    }
  }
}

# add "of" version of names containing "of the",
# e.g. "Democratic Republic of the Congo" => "Democratic Republic of Congo"
for my $norm (keys %norm2unnorm2infos) {
  if ($norm =~ /\bof the\b/) {
    my $new_norm = $norm;
    $new_norm =~ s/\bof the\b/of/g;
    if (exists($norm2unnorm2infos{$new_norm})) {
      print STDERR "already have $new_norm\n";
      next;
    }
    my $unnorm2infos = $norm2unnorm2infos{$norm};
    for my $unnorm (keys %$unnorm2infos) {
      my $new_unnorm = $unnorm;
      $new_unnorm =~ s/\bof the\b/of/ig;
      $norm2unnorm2infos{$new_norm}{$new_unnorm} = $unnorm2infos->{$unnorm};
    }
  }
}

for my $norm (sort keys %norm2unnorm2infos) {
  print $norm;
  my $unnorm2infos = $norm2unnorm2infos{$norm};
  my $first = 1;
  for my $unnorm (sort keys %$unnorm2infos) {
    if ($first) {
      $first = 0;
    } else {
      print "\t,";
    }
    print "\t$unnorm";
    for my $info (@{$unnorm2infos->{$unnorm}}) {
      if ($info->{type} eq 'country') {
	print "\t(country :code $info->{code} :name \"" . escape_for_quotes($info->{official}) . "\")";
      } else {
	print "\t($info->{type} ";
	if (exists($info->{country})) {
	  print ":country $info->{country}";
	} else { # countries
	  print ":countries (" . join(' ', @{$info->{countries}}) . ")";
	}
	print ")";
      }
    }
  }
  print "\n";
}
