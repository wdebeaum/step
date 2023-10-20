#!/usr/bin/perl

package TextTagger::PersonalNames;
require Exporter;
@ISA = qw(Exporter);
@EXPORT_OK = qw(init_name_tagger ready_name_tagger tag_personal_names fini_name_tagger);

use IPC::Open2;

use strict vars;

my $debug = 0;

my $ambiguity_threshold = 0.2; # If both male and female freqs are above 20% of the total, consider the name ambiguous

# assign scores 0-1 logarithmically between these two total frequency values
# (clamp it outside)
# note that this puts 10,000 at score 0.5, so that if there's another sense,
# the name is likely to win above 10k, and lose below 10k, agreeing with
# decisions we previously made about the stoplist
my $min_score_freq = 1000;
my $max_score_freq = 100000;
my $score_denominator = log($max_score_freq / $min_score_freq);

# less-common personal names that are also names of other things, or just words
# that often occur at the beginning of a sentence and get capitalized
# see also PlaceNames.pm
my @stoplist = (
  # week days (Thursday and Saturday aren't attested, but I'm being thorough)
  qw(Sunday Monday Tuesday Wednesday Thursday Friday Saturday),
  # months
  # February isn't attested
  # April, May, June, and August all have frequency >10,000 as names
  qw(January February March July September October November December),
  # seasons
  # Fall isn't attested
  # Summer and Autumn have frequency >10,000 as names
  qw(Spring Fall Winter),
  # personal pronouns
  # Again, I'm being thorough, using this table:
  # https://en.wikipedia.org/wiki/English_personal_pronouns#Basic
  qw(I Me My Mine Myself
     You Your Yours Yourself
     He Him His Himself
     She Her Hers Herself
     It Its Itself
     They Them Their Theirs Themselves
     We Us Our Ours Ourselves
  ),
  # capitalized articles and quantifiers (as defined in TRIPS); not all attested
  qw(A All Alot Another Any An
     Both
     Each Either Enough Every
     Fewer Few
     Half
     Less Little Lots
     Many More Most Much
     No None Not Numerous
     Only
     Plenty
     Several Some
     That The These This Those
     Various
     What Which
  ),
  # aux/be verbs; not all attested; "Will" and "May" omitted because they're
  # very common names
  qw(Be Is Are Am Was Were Been Being
     Do Does Did Done Doing
     Has Have Had Having
     Might
     Can Could
     Would
     Shall Should
  )
);

my ($terms_in, $terms_out, $terms_pid);

sub init_name_tagger {
  $terms_pid = open2($terms_in, $terms_out,
                     $ENV{TRIPS_BASE} . "/bin/terms",
                     $ENV{TRIPS_BASE} . "/etc/TextTagger/personal-names.tsv");
  binmode $terms_in, ':utf8';
  binmode $terms_out, ':utf8';
}

sub fini_name_tagger {
  close($terms_in);
  close($terms_out);
  waitpid $terms_pid, 0;
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
    next if (grep { $_ eq $lex } @stoplist);
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
    my $score = log($total_freq / $min_score_freq) / $score_denominator;
    if ($score < 0) {
      $score = 0;
    } elsif ($score > 1) {
      $score = 1;
    }
    push @terms, { type => "named-entity",
                   lftype => [$lftype],
		   'penn-pos' => ['NNP'],
		   score => $score,
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
  fini_function => \&fini_name_tagger,
  output_types => ['named-entity'],
  input_text => 1
};

1;
