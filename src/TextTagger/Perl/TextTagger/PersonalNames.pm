#!/usr/bin/perl

package TextTagger::PersonalNames;
require Exporter;
@ISA = qw(Exporter);
@EXPORT_OK = qw(init_name_tagger ready_name_tagger tag_personal_names);

use IPC::Open2;

use strict vars;

my $debug = 0;

my $ambiguity_threshold = 0.2; # If both male and female freqs are above 20% of the total, consider the name ambiguous

# less-common personal names that are also names of other things
my @blacklist = (
  # week days (Thursday and Saturday aren't attested, but I'm being thorough)
  qw(Sunday Monday Tuesday Wednesday Thursday Friday Saturday),
  # months
  # February isn't attested
  # April, May, June, and August all have frequency >10,000 as names
  qw(January February March July September October November December),
  # seasons
  # Fall isn't attested
  # Summer and Autumn have frequency >10,000 as names
  qw(Spring Fall Winter)
);

my ($terms_in, $terms_out, $terms_pid);

sub init_name_tagger {
  $terms_pid = open2($terms_in, $terms_out,
                     $ENV{TRIPS_BASE} . "/bin/terms",
                     $ENV{TRIPS_BASE} . "/etc/TextTagger/personal-names.tsv");
  binmode $terms_in, ':utf8';
  binmode $terms_out, ':utf8';
}

sub ready_name_tagger {
  tag_personal_names(undef, "ready");
  return 1;
}

sub tag_personal_names {
  my $self = shift;
  my $str = shift;
  $str =~ s/\n/ /g;
  my @terms = ();
  print $terms_out "$str\n";
  print STDERR "$str\n"
    if ($debug);
  while ((my $term = <$terms_in>)) {
    print STDERR $term
      if ($debug);
    chomp $term;
    last if ($term eq '');
    die "Bogus output from personal names tagger: '$term'"
      unless ($term =~ /^[^\t]+(?:\t\d+){4}$/);
    my ($lex, $start, $end, $male_freq, $female_freq) = split(/\t/, $term);
    next if (grep { $_ eq $lex } @blacklist);
    my $total_freq = $male_freq + $female_freq;
    my $male_prop = $male_freq * 1.0 / $total_freq;
    my $female_prop = $female_freq * 1.0 / $total_freq;
    print STDERR "male_prop=$male_prop; female_prop=$female_prop\n" if ($debug);
    my $lftype = 'PERSON';
    if ($male_prop < $ambiguity_threshold) {
      $lftype = 'FEMALE-PERSON';
    } elsif ($female_prop < $ambiguity_threshold) {
      $lftype = 'MALE-PERSON';
    }
    push @terms, { type => "named-entity",
                   lftype => [$lftype],
		   'penn-pos' => ['NNP'],
		   lex => $lex,
		   start => $start,
		   end => $end
		 };
    print STDERR "Got term '$lex' ($lftype).\n"
      if ($debug);
  }
  return [@terms];
}

push @TextTagger::taggers, {
  name => "personal_names",
  init_function => \&init_name_tagger,
  ready_function => \&ready_name_tagger,
  tag_function => \&tag_personal_names,
  output_types => ['named-entity'],
  input_text => 1
};

1;
