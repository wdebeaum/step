#!/usr/bin/perl

package TextTagger::StanfordParser;
require Exporter;
@ISA = qw(Exporter);
@EXPORT_OK = qw(init_stanford_parser ready_stanford_parser run_stanford_parser fini_stanford_parser $debug);

use IPC::Open2;
use TextTagger::Tags2Trips qw(stanford_word_re $previous_word_ended_with_period $min_clause_length @penn_clause_tags);
use TextTagger::Util qw(match2tag);

use strict vars;

my $debug = 0;

my ($stanford_in, $stanford_out, $stanford_pid);
sub init_stanford_parser
{
  # TODO wait for this PID on exit?
  $stanford_pid = open2($stanford_in, $stanford_out, $ENV{TRIPS_BASE} . "/bin/ParserFilter");
  binmode $stanford_in, ':utf8';
  binmode $stanford_out, ':utf8';
}

sub fini_stanford_parser {
  close($stanford_in);
  close($stanford_out);
  waitpid $stanford_pid, 0;
}

sub ready_stanford_parser
{
  print $stanford_out "ready\n";
  my $response = <$stanford_in>;
  return 1;
}

sub get_parse_tree
{
  my $english_utt = shift;
  # normalize spacing of tokens
  $english_utt =~ s/\s+/ /g;
  print STDERR $english_utt . "\n"
    if ($debug);
  print $stanford_out $english_utt . "\n";
  my $tree_string = <$stanford_in>;
  chomp $tree_string;
  $tree_string =~ s/[^\s\(\)\[\]]+/"\Q$&\E"/g;
  $tree_string =~ s/\s+/,/g;
  $tree_string =~ s/\(/[/g;
  $tree_string =~ s/\)/]/g;
  return eval($tree_string);
}

# return tags that align with the original text starting at start, and the ending position of the last tag
sub tree_to_tags
{
  my ($tree, $remaining_text, $start) = @_;
  my $cat = shift @$tree;
  my $score = (shift @$tree)->[0];
  my @tags = ();
  my $old_remaining_text = $remaining_text;
  my $new_start;
  my $end = $start;
  for my $subtree (@$tree)
  {
    # HACK: Stanford passes through e.g. "(1)" as a word instead of separating
    # it into "-LRB- 1 -RRB-", so that comes out as a list with too few
    # elements to be a subtree; convert that to a string so we treat it as a
    # word.
    $subtree = '(' . join(' ', @$subtree) . ')'
      if (ref($subtree) eq 'ARRAY' and @$subtree < 3);
    if (ref($subtree) eq 'ARRAY') # a subtree, recurse!
    {
      my ($new_tags, $new_remaining_text, $new_new_start, $new_end) =
        tree_to_tags($subtree, $remaining_text, $end);
      push @tags, @$new_tags;
      $remaining_text = $new_remaining_text;
      $new_start = $new_new_start unless (defined($new_start));
      $end = $new_end;
    } else # a word, align!
    {
      $remaining_text =~ stanford_word_re($subtree)
        or die "Parser: word not found in remaining original text: $subtree\n";
      my $tag = { type => 'word',
      	          match2tag()
                };
      $tag->{lex} = '.' if ($subtree eq '.'); # HACK
      $tag->{start} += $end;
      $tag->{end} += $end;
      push @tags, $tag;
      $remaining_text = $';
      $new_start = $tag->{start} unless (defined($new_start));
      $end = $tag->{end};
    }
  }
  if (@tags and $tags[0]->{type} eq 'word')
  {
    @tags = ({  type => 'pos',
		lex => join(' ', map { $_->{lex} } @tags),
		'penn-pos' => [$cat],
		score => $score,
		start => $new_start,
		end => $end
		});
  } else
  {
    my $text = substr($old_remaining_text, $new_start - $start, $end - $new_start);
    push @tags, { type => 'clause',
		  text => $text,
		  start => $new_start,
		  end => $end
		}
      if ($end - $new_start >= $min_clause_length and
	  grep { $_ eq $cat } @penn_clause_tags);
    push @tags, { type => 'phrase',
    		  text => $text,
		  'penn-cat' => [$cat],
		  score => $score,
		  start => $new_start,
		  end => $end
		};
  }
  return (\@tags, $remaining_text, $new_start, $end);
}

sub run_stanford_parser_on_text
{
  my ($self, $text) = @_;
  # give up if $text is blank (otherwise SP will choke on it)
  return [] if ($text !~ /\S/);
  my $toptree = get_parse_tree($text);
  my $toplabel = shift @$toptree;
  die "unknown top-level tree label: $toplabel\n" unless ($toplabel eq 'ROOT');
  my @tags = ();
  my $end = 0;
  my $remaining_text = $text;
  $previous_word_ended_with_period = 0;
  for my $tree (@$toptree)
  {
    my ($new_tags, $new_remaining_text, $new_start, $new_end) =
      tree_to_tags($tree, $remaining_text, $end);
    push @tags, @$new_tags;
    $remaining_text = $new_remaining_text;
    $end = $new_end;
  }
  return [@tags];
}

sub run_stanford_parser
{
  my $self = shift;
  my @tags = @_;
  my @new_tags = ();
  for my $chunk (@tags)
  {
    if ($chunk->{type} eq 'sentence')
    {
      push @new_tags, map {
	my $tag = $_;
	$tag->{start} += $chunk->{start};
	$tag->{end} += $chunk->{start};
	$tag
      } @{run_stanford_parser_on_text($self, $chunk->{text})}
    }
  }
  return \@new_tags;
}

push @TextTagger::taggers, {
  name => "stanford_parser",
  init_function => \&init_stanford_parser,
  ready_function => \&ready_stanford_parser,
  tag_function => \&run_stanford_parser,
  fini_function => \&fini_stanford_parser,
  output_types => [qw(phrase clause pos)],
  input_types => ['sentence']
};

1;
