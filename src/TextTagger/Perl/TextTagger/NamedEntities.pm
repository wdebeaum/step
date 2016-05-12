#!/usr/bin/perl

package TextTagger::NamedEntities;
require Exporter;
@ISA = qw(Exporter);
@EXPORT_OK = qw($NER_DIR init_named_entity_tagger ready_named_entity_tagger tag_named_entities);

use IPC::Open2;
use TextTagger::Escape qw(unescape_backslashes);
use TextTagger::Tags2Trips qw(stanford_word_re $previous_word_ended_with_period);

use strict vars;

my %NEclass2lftype = (
  'ORGANIZATION' => 'ORGANIZATION',
  'PERSON' => 'PERSON',
  'LOCATION' => 'GEOGRAPHIC-REGION'
  );

my ($stanford_in, $stanford_out, $stanford_pid);
sub init_named_entity_tagger
{
  # TODO wait for this PID on exit?
  $stanford_pid = open2($stanford_in, $stanford_out, $ENV{TRIPS_BASE} . "/bin/NERFilter");
  binmode $stanford_in, ':utf8';
  binmode $stanford_out, ':utf8';
#    "cd $NER_DIR ; java -Xmx1024m -cp stanford-ner.jar:. NERFilter");
}

sub ready_named_entity_tagger
{
  print $stanford_out "ready\n";
  my $response = <$stanford_in>;
  return 1;
}

sub stanford_ner
{
  my $english_utt = shift;
  $english_utt =~ s/[[:space:]]/ /g;
  print $stanford_out $english_utt . "\n";
  my $stanford_utt = <$stanford_in>;
  chomp $stanford_utt;
  return $stanford_utt;
}

sub tag_named_entities
{
  my $self = shift;
  my $original_text = shift;
  my $tagged_text = stanford_ner($original_text);
  my $remaining_original_text = $original_text;
  my $rot_start = 0;
  my @entities = ();
  my $entity_start = undef;
  my $prev_tag = 'O';
  my $prev_word_end = $rot_start;
  my $remaining_tagged_text = $tagged_text;
  $remaining_tagged_text =~ s/^\s+//;
  $previous_word_ended_with_period = 0;
  while ($remaining_tagged_text =~
         /^ (?: ( < \/? [\w-] .*? > ) \s* |
		( ( .*? [^\\] ) \/ (\w+) (?: \s+ | $ ) )
	    )
	 /x)
  {
    $remaining_tagged_text = $';
    my ($word, $tag);
    if (defined($1)) { # an XML-ish tag
      ($word, $tag) = ($1, "O");
    } else { # a normal tagged word
      ($word, $tag) = (unescape_backslashes($3), $4);
    }
    
    my ($match_start, $match_end) = undef;
    $remaining_original_text =~ stanford_word_re($word)
      or die "NER: word not found in remaining original text: $word\n";
    $word = ($word eq '.')? '.' : $&; # HACK
    $match_start = $-[0];
    $match_end = $+[0];
    $remaining_original_text = $';
    my $word_start = $rot_start + $match_start;
    my $word_end = $rot_start + $match_end;
    $rot_start += $match_end;

    if (defined($entity_start) and $tag ne $prev_tag)
    {
      push @entities, { type => "named-entity",
      			lex => substr($original_text, $entity_start, $prev_word_end - $entity_start),
			lftype => [$NEclass2lftype{$prev_tag}],
                        start => $entity_start,
			end => $prev_word_end
                        };
      $prev_tag = undef;
      $entity_start = undef;
    }
    if ($tag ne 'O' and !defined($entity_start))
    {
      $entity_start = $word_start;
    }
    $prev_tag = $tag;
    $prev_word_end = $word_end;
  }
  die "malformed tagged text: $remaining_tagged_text\n"
    if ($remaining_tagged_text ne '');
  if (defined($entity_start))
  {
    push @entities, { type => "named-entity",
		      lex => substr($original_text, $entity_start, $prev_word_end - $entity_start),
    		      lftype => [$NEclass2lftype{$prev_tag}],
                      start => $entity_start,
		      end => $prev_word_end
                      };
  }
  return [@entities];
}

push @TextTagger::taggers, {
  name => "named_entities",
  init_function => \&init_named_entity_tagger,
  ready_function => \&ready_named_entity_tagger,
  tag_function => \&tag_named_entities,
  output_types => ['named-entity'],
  input_text => 1
};

1;
