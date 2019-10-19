#!/usr/bin/env perl

# get-countries-tsv.pl - turn countries.json into a TSV file for Countries.pm

use open ':std', ':encoding(UTF-8)'; # ever more encoding paranoia

use Data::Dumper;
use Scalar::Util qw(looks_like_number);
use lib "./Perl";
use TextTagger::Escape qw(escape_for_quotes);
use TextTagger::Util qw(remove_duplicates);
use TextTagger::Normalize qw(normalize);

use strict vars;

# FIXME? not bothering to add a dependency on one of the (many) JSON modules
# for Perl; instead rolling my own slightly sloppy JSON parser that works for
# this file

my $ungot_c = undef;
# undo the final getc done by slurp_chars_matching() so that the next call sees
# the given character first
sub ungetc {
  $ungot_c = shift;
}

# read a character at a time from STDIN while the character matches the given
# regex, then return a list of two elements: the string of matching characters,
# and the final, non-matching character
sub slurp_chars_matching {
  my $re = shift;
  my $c;
  my $slurped = '';
  while (1) {
    $c = (defined($ungot_c) ? $ungot_c : getc);
    $ungot_c = undef;
    return ($slurped, undef) unless (defined($c));
    last unless ($c =~ $re);
    $slurped .= $c;
  }
  return ($slurped, $c);
}

sub json_string_to_perl {
  my $str = shift;
  $str =~ s/\\(["\\\/bfnrt])|\\u([0-9A-Fa-f]{4})/
    eval($1 ? "\"$&\"" : "\"\\N{U+$2}\"")
  /ge;
  return $str;
}

# read a double-quoted JSON string (except the initial ") from STDIN, and
# return the corresponding perl string
sub read_json_string {
  my $str = '';
  while (1) {
    my ($slurped, $c) = slurp_chars_matching(qr/^[^\\"]$/);
    $str .= $slurped;
    if (not defined($c)) {
      die "got EOF in the middle of a string literal";
    } elsif ($c eq '"') {
      last;
    } else { # backslash
      $str .= $c;
      $c = getc;
      die "got EOF in the middle of an escape sequence" unless (defined($c));
      $str .= $c;
    }
  }
  return json_string_to_perl($str);
}

my $next_key = undef;
my @path = ();

# read the next scalar entry in a JSON object or array on STDIN, or return
# undef at EOF; when an entry is returned, @path is the path of keys from the
# root of the read object to the returned entry
sub next_json_entry {
  pop @path; # remove the key of the previous entry
  while (1) {
    my (undef, $c) = slurp_chars_matching(qr/^\s$/); # skip whitespace
    if (not defined($c)) {
      return undef;
    } elsif ($c eq ',') {
      if (looks_like_number($next_key)) {
	$next_key++;
      } else {
	$next_key = undef;
      }
    } elsif ($c eq '{') {
      push @path, $next_key;
      $next_key = undef;
    } elsif ($c eq '[') {
      push @path, $next_key if (defined($next_key));
      $next_key = 0;
    } elsif ($c eq '}' or $c eq ']') {
      $next_key = pop @path;
    } elsif ($c eq '"') {
      my $str = read_json_string();
      if (defined($next_key)) { # in array, or in object after a key
	push @path, $next_key;
	return $str;
      } else { # in object, this is the key
        $next_key = $str;
	my (undef, $c) = slurp_chars_matching(qr/^\s$/);
	die "expected : after object key, but got $c" unless ($c eq ':');
      }
    } else { # non-string scalar
      my ($val, $next_c) = slurp_chars_matching(qr/^[^\s,{}\[\]]$/);
      ungetc($next_c);
      push @path, $next_key;
      return $c . $val;
    }
  }
}

my %norm2unnorm2infos = ();

my $info;
my $country_index = -1;

# final processing for an $info we won't be adding any more to
sub finish_info {
  unless (exists($info->{code})) {
    print STDERR "country $country_index has no code!\n";
    print STDERR Data::Dumper->Dump([$info],['*info']);
    return;
  }
  my @names = ();
  if (exists($info->{official})) {
    my $unnorm = $info->{official};
    my $norm = normalize($unnorm);
    push @{$norm2unnorm2infos{$norm}{$unnorm}},
	 +{ %$info, status => 'official' };
    push @names, $unnorm;
  }
  if (exists($info->{common})) {
    my $unnorm = $info->{common};
    unless (grep { $_ eq $unnorm } @names) {
      my $norm = normalize($unnorm);
      push @{$norm2unnorm2infos{$norm}{$unnorm}},
           +{ %$info, status => 'common' };
      push @names, $unnorm;
    }
  }
  if (exists($info->{altSpellings})) {
    for my $unnorm (@{$info->{altSpellings}}) {
      unless (grep { $_ eq $unnorm } @names) {
	my $norm = normalize($unnorm);
	push @{$norm2unnorm2infos{$norm}{$unnorm}},
	     +{ %$info, status => 'alt' };
	push @names, $unnorm;
      }
    }
  }
  if (exists($info->{capitals})) {
    for my $capital (@{$info->{capitals}}) {
      push @{$norm2unnorm2infos{normalize($capital)}{$capital}},
	   +{ type => 'capital', country => $info->{code} };
    }
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

# actually read the whole file from STDIN, processing infos
while (defined(my $val = next_json_entry())) {
  #print STDERR join('.', @path) . " = $val\n";
  if ($path[0] != $country_index) {
    finish_info() if (defined($info));
    $info = { type => 'country' };
    $country_index = $path[0];
  }
  if ($path[1] eq 'name' and $path[2] =~ /^(common|official)$/) {
    $info->{$path[2]} = $val;
  } elsif ($path[1] eq 'altSpellings') {
    push @{$info->{altSpellings}}, $val;
  } elsif ($path[1] eq 'capital') {
    push @{$info->{capitals}}, $val;
  } elsif ($path[1] =~ /^((?:sub)?region|demonym)$/) {
    $info->{$path[1]} = $val;
  } elsif ($path[1] eq 'cca2') {
    $info->{code} = $val;
  }
}
finish_info() if (defined($info));

delete $norm2unnorm2infos{''}; # sigh.

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

# output TSV with lispy info structures
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
	print "\t(country :code $info->{code} :name \"" . escape_for_quotes($info->{official}) . "\" :status " . $info->{status} . ")";
      } else {
	print "\t($info->{type} ";
	if (exists($info->{country})) {
	  print ":country $info->{country}";
	} else { # countries
	  print ":countries (" . join(' ', @{$info->{countries}}) . ")";
	}
	print " :status name)";
      }
    }
  }
  print "\n";
}
