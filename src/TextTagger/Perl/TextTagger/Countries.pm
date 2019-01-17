#!/usr/bin/perl

package TextTagger::Countries;
require Exporter;
@ISA = qw(Exporter);
@EXPORT_OK = qw(init_countries tag_countries fini_countries);

use Data::Dumper;
use IPC::Open2;
use KQML::KQML;
use TextTagger::Normalize qw($dash_re is_bad_match characterize_match score_match);
use TextTagger::Tags2Trips qw(trips2tagNative);

use strict vars;

my $debug = 0;

my %dsi_type2sense_infos = (
  capital => [{ lftype => ['city'], 'penn-pos' => ['NNP'] }],
  country => [{ lftype => ['country'], 'penn-pos' => ['NNP'] }],
  demonym => [{ lftype => ['nationality-val'], 'penn-pos' => ['JJ'] },
	      { lftype => ['nationality'], 'penn-pos' => ['NNP'] }],
  region => [{ lftype => ['geographic-region'], 'penn-pos' => ['NNP'] }],
  subregion => [{ lftype => ['geographic-region'], 'penn-pos' => ['NNP'] }]
);

my ($terms_in, $terms_out, $terms_pid);

sub init_countries {
  my $self = shift;
  $terms_pid = open2($terms_in, $terms_out,
                     $ENV{TRIPS_BASE} . "/bin/terms2",
                     $ENV{TRIPS_BASE} . "/etc/TextTagger/countries.tsv");
  binmode $terms_in, ':utf8';
  binmode $terms_out, ':utf8';
}

sub fini_countries {
  close($terms_in);
  close($terms_out);
  waitpid $terms_pid, 0;
}

sub tag_countries {
  my ($self, $str, @input_tags) = @_;
  $str =~ s/\n/ /g;
  my %sentence_starts = ();
  for my $tag (@input_tags) {
    $sentence_starts{$tag->{start}} = 1 if ($tag->{type} eq 'sentence');
  }
  # TODO? plural, comparative, and superlative demonyms: Greeks, Greeker, Greekest
  print $terms_out "$str\n";
  print STDERR "$str\n"
    if ($debug);
  my @terms = ();
  while ((my $term = <$terms_in>)) {
    print STDERR $term
      if ($debug);
    chomp $term;
    last if ($term eq '');
    my ($normalized_matched_variant, $start, $end, @rest) = split(/\t/, $term, -1);
    die "Bogus output from term tagger (Countries): '$term'"
      unless ($start =~ /^\d+$/ and $end =~ /^\d+$/ and @rest);
    # remake lex from original input, since the matched variant could be
    # different
    my $lex = substr($str, $start, $end - $start);
    next if (is_bad_match($str, $lex, $start, $end));
    my %tag_common = (
      type => 'named-entity',
      lex => $lex,
      start => $start,
      end => $end
    );
    while (@rest) {
      my $matched_variant = shift(@rest); # unnormalized
      # require short names to match exactly (e.g. don't match "is" to "IS" =
      # "Iceland")
      if ($end - $start < 3 and $lex ne $matched_variant) {
	# skip this match by eating columns until the next comma
	while (@rest) {
	  last if (shift(@rest) eq ',');
	}
	next;
      }
      my $match = characterize_match($lex, $matched_variant, $sentence_starts{$start});
      $match->{score} = score_match($match);
      print STDERR Data::Dumper->Dump([$match],['*match'])
        if ($debug);
      while (@rest) {
	my $info_str = shift(@rest);
	last if ($info_str eq ',');
	my $info_kqml = KQML::KQMLReadFromString($info_str);
	my $info = trips2tagNative($info_kqml);
	$info->{name} = $matched_variant unless (exists($info->{name}));
	print STDERR Data::Dumper->Dump([$info],['*info'])
	  if ($debug);
	$info->{domain} = 'cwms';
	$info->{matches} = [$match];
	my $sense_infos = $dsi_type2sense_infos{$info->{type}};
	print STDERR Data::Dumper->Dump([$sense_infos],['*sense_infos'])
	  if ($debug);
	for my $sense_info (@$sense_infos) {
	  push @terms, +{
	    %tag_common,
	    %$sense_info,
	    'domain-specific-info' => $info
	  };
	}
      }
    }
  }
  return [@terms];
}

push @TextTagger::taggers, {
  name => "countries",
  init_function => \&init_countries,
  tag_function => \&tag_countries,
  fini_function => \&fini_countries,
  output_types => [qw(named-entity)],
  input_text => 1,
  optional_input_types => [qw(sentence)]
};

1;
