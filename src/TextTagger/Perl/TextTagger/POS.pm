#!/usr/bin/perl

package TextTagger::POS;
require Exporter;
@ISA = qw(Exporter);
@EXPORT_OK = qw(init_pos_tagger ready_pos_tagger tag_pos $debug);

use IPC::Open2;
use TextTagger::Tags2Trips qw(%penn2trips_punc);
use TextTagger::Escape qw(unescape_backslashes);

use strict vars;

my $debug = 0;

my ($stanford_in, $stanford_out, $stanford_pid);
sub init_pos_tagger
{
  # TODO wait for this PID on exit?
  $stanford_pid = open2($stanford_in, $stanford_out, $ENV{TRIPS_BASE} . "/bin/POSFilter");
  binmode $stanford_in, ':utf8';
  binmode $stanford_out, ':utf8';
}

sub ready_pos_tagger
{
  print $stanford_out "ready\n";
  my $response = <$stanford_in>;
  return 1;
}

# apostrophes can be either ASCII apostrophes, or Unicode right single quotes
my $apos = qr/['\x{2019}]/;

sub stanford_pos
{
  my $english_utt = shift;
  
  # normalize spacing of tokens

  # special case for ' not surrounded by letters
  $english_utt =~ s/(?<![[:alnum:]])($apos)|($apos)(?![[:alnum:]])/ $1$2 /g;
  # special case for n't
  $english_utt =~ s/n($apos)t/ n$1t /g;
  # surround words with space
  $english_utt =~ s/(?:(\S)($apos))?([[:alnum:]]+(?!$apos))/($& eq "n't" or $& eq "n\x{2019}t")? $& : "$1 $2$3"/ge;
  # surround punctuation characters (except ') with space
  $english_utt =~ s/[^'\x{2019}[:alnum:]\s]/ $& /g;

  $english_utt =~ s/^\s+//; # trim leading space
  $english_utt =~ s/\s+$//; # trim trailing space
  $english_utt =~ s/\s+/ /g; # collapse multiple spaces
  
  print STDERR $english_utt . "\n"
    if ($debug);
  print $stanford_out $english_utt . "\n";
  my $stanford_utt = <$stanford_in>;
  chomp $stanford_utt;
  print STDERR $stanford_utt . "\n"
    if ($debug);
  return $stanford_utt;
}

sub tag_pos
{
  my $self = shift;
  my $original_text = shift;
  my $tagged_text = stanford_pos($original_text);
  my $remaining_original_text = $original_text;
  my $rot_start = 0;
  my @postags = ();
  for my $tagged_word (split(' ', $tagged_text))
  {
    print STDERR $tagged_word . "\n"
      if ($debug);
    die "malformed tagged word: $tagged_word\n"
      unless ($tagged_word =~ /^(.*)\/([\w\-\$]+|\W{1,2})$/);
    my ($word, $tag) = (unescape_backslashes($1), $2);
    
    # stupid stanford NER/POS squishes (), [], and <> all into -LRB- -RRB-
    my $re = qr/\Q$word\E/;
    if ($word eq '-LRB-')
    {
      $re = qr/[\(\[\<]/;
    } elsif ($word eq '-RRB-')
    {
      $re = qr/[\)\]\>]/;
    } elsif (exists($penn2trips_punc{$word}))
    {
      my $alt_word = $penn2trips_punc{$word};
      $re = qr/$re|\Q$alt_word\E/;
    }
    die "word not found in original text: $word\n"
      unless ($remaining_original_text =~ $re);
    $word = $&;
    $remaining_original_text = $';
    my $word_start = $rot_start + $-[0];
    my $word_end = $rot_start + $+[0];
    $rot_start += $+[0];

    push @postags, { type => 'pos',
		     lex => $word,
		     'penn-pos' => [$tag],
		     start => $word_start,
		     end => $word_end
		     };
  }
  return [@postags];
}

push @TextTagger::taggers, {
  name => "stanford_pos",
  init_function => \&init_pos_tagger,
  ready_function => \&ready_pos_tagger,
  tag_function => \&tag_pos,
  output_types => [qw(pos)],
  input_text => 1
};

1;
