#!/usr/bin/perl
#
# File: convert.pl
# Creator: George Ferguson
# Created: Thu Jun  7 08:49:52 2012
# Time-stamp: <Thu Jun 21 13:16:18 EDT 2012 ferguson>
#
# Reads old-style lexicon data files and converts them into a
# one-file-per-lemma format. A goal of this is to preserve the comments
# surrounding the entries (hence Perl rather than Lisp, in the end).
#
# Also supports tagging certain words with the `base500' tag since that
# was a current need at the time this tool was written.
#

use Getopt::Long;

my $DEBUG;
my $PREFIX;
# Base500 tagging additions
my $BASE500_FILENAME;
my %BASE500_WORDS;
GetOptions('debug' => \$DEBUG,
	   'prefix=s' => \$PREFIX,
	   'base500=s' => \$BASE500_FILENAME,
);

$STATE_START = 'START';
$STATE_DEFINE_WORDS = 'DEFINE_WORDS';
$STATE_DEFINE_WORDS_WORDLIST = 'DEFINE_WORDS_WORDLIST';
$STATE_DEFINE_WORDS_WORDLIST_WORD = 'DEFINE_WORDS_WORDLIST_WORD';
$STATE_DEFINE_WORDS_WORDLIST_WORD_SENSES = 'DEFINE_WORDS_WORDLIST_WORD_SENSES';
$STATE_DEFINE_LIST_OF_WORDS = 'DEFINE_LIST_OF_WORDS';
$STATE_DEFINE_LIST_OF_WORDS_WORDLIST = 'DEFINE_LIST_OF_WORDS_WORDLIST';
$STATE_BLOCK_COMMENT = 'BLOCK_COMMENT';
$state = $STATE_START;

if ($BASE500_FILENAME) {
    base500_init();
}

while (<>) {
    DEBUG("$ARGV:$.: $state: $depth: $_");
    next if (/^\s*$/);
    if (/#\|/) {
	$saved_state = $state;
	set_state($STATE_BLOCK_COMMENT);
	next;
    } elsif ($state eq $STATE_BLOCK_COMMENT) {
	if (/\|#/) {
	    set_state($saved_state);
	}
	next;
    }
    if ($state eq $STATE_START) {
	if (/^\s*;/) {
	    $comment .= $_;
	} elsif (/\(define-words\s+/i) {
	    $function_start = $_;
	    $depth = 1;
	    set_state($STATE_DEFINE_WORDS);
	} elsif (/\(define-list-of-words\s+/i) {
	    $function_start = $_;
	    $depth = 1;
	    set_state($STATE_DEFINE_LIST_OF_WORDS);
	} else {
	    # ignore
	}
    } elsif ($state eq $STATE_DEFINE_WORDS) {
	if (/^\s*;/) {
	    $comment .= $_;
	} elsif (/:words\s+\(/i ||
	    (/\(/ && ($function_start =~ /:words/i))) {
	    $depth += 1;
	    set_state($STATE_DEFINE_WORDS_WORDLIST);
	} elsif (/^[\s\)]+$/) {
	    $depth += count_paren_nesting($_);
	    if ($depth == 0) {
		set_state($STATE_START);
	    } else {
		die("$ARGV:$.: $state#1: $depth: $_");
	    }
	} else {
	    $function_start .= $_;
	}
    } elsif ($state eq $STATE_DEFINE_WORDS_WORDLIST) {
	if (/^\s*;/) {
	    # comment for next entry
	    $comment = $_;
	} elsif (/^\s*\((\([^\)]+\)|(\S+))/) {
	    $word = $1;
	    $entry = $_;
	    $depth += 1;
	    set_state($STATE_DEFINE_WORDS_WORDLIST_WORD);
	} else {
	    $depth += count_paren_nesting($_);
	    if ($depth == 1) {
		set_state($STATE_DEFINE_WORDS);
	    } elsif ($depth == 0) {
		set_state($STATE_START);
	    } else {
		die("$ARGV:$.: $state: $depth: $_");
	    }
	}
    } elsif ($state eq $STATE_DEFINE_WORDS_WORDLIST_WORD) {
	# We have seen the start of a worddef
	$depth += count_paren_nesting($_);
	$entry .= $_;
	if ($depth <= 2) {
	    # Seen close paren of worddef
	    output_word($word, $function_start, $comment, $entry);
	    $comment = $entry = '';
	    if ($depth == 2) {
		set_state($STATE_DEFINE_WORDS_WORDLIST);
	    } elsif ($depth == 1) {
		set_state($STATE_DEFINE_WORDS);
	    } elsif ($depth == 0) {
		set_state($state = $STATE_START);
	    } else {
		# Too many close parens!
		die("$ARGV:$.: $state: $depth\n");
	    }
	}
    } elsif ($state eq $STATE_DEFINE_LIST_OF_WORDS) {
	if (/:words\s+\(/i) {
	    s/;.*$//; # comment in middle of list of words
	    $wordlist = $_;
	    $depth = count_paren_nesting($_);
	    if ($depth > 0) {
		set_state($STATE_DEFINE_LIST_OF_WORDS_WORDLIST);
	    } else {
		output_wordlist($wordlist,$function_start,$comment,$entry);
		$comment = $entry = '';
		set_state($STATE_START);
	    }
	} elsif (/:pos/ || /:templ/) {
	    # special case: time-and-space-adverbs.lisp entry for out
	    $function_start .= $_;
	} else {
	    # accumulate contents of call (i.e., :senses)
	    $entry .= $_;
	}
    } elsif ($state eq $STATE_DEFINE_LIST_OF_WORDS_WORDLIST) {
	s/;.*$//; # comment in middle of list of words
	$wordlist .= $_;
	$depth += count_paren_nesting($_);
	if ($depth <= 0) {
	    output_wordlist($wordlist,$function_start,$comment,$entry);
	    $comment = $entry = '';
	    set_state($STATE_START);
	}
    } else {
	die("$ARGV:$.: bad state: $state\n");
    }
} continue {
    close ARGV if eof;  # Not eof()!
}

sub set_state {
    my($s) = @_;
    $state = $s;
    DEBUG("state=$state\n");
}

sub count_paren_nesting {
    my($str) = @_;
    my $n = 0;
    for (my $i=0; $i < length($str); $i++) {
	my $c = substr($str, $i, 1);
	if ($c eq ';') {
	    last;
	} elsif ($c eq '(') {
	    $n += 1;
	} elsif ($c eq ')') {
	    $n -= 1;
	} elsif ($c eq '"') {
	    $i += 1;
	    while ($i < length($str) && ($c=substr($str, $i, 1)) ne '"') {
		if ($c eq '\\') {
		    $i += 1;
		}
		$i += 1;
	    }
	}
    }
    DEBUG("count_paren_nesting: returning $n\n");
    return $n;
}

sub output_word {
    my($word, $function_start, $comment, $entry) = @_;
    DEBUG("output_word: $word\n");
    my $baseword;
    if ($word =~ /\(\s*([\w\-:\^]+)/) {
	$baseword = $1;
    } else {
	$baseword = $word;
    }
    my $filename = $baseword;
    $filename =~ s/^w:://i;
    $filename =~ s/[<>]/_/g;
    die("$ARGV:$.: bad filename: $filename") if (!$filename || $filename !~ /^[\w\-\^<>]+$/);
    $filename = lc($filename) . ".lisp";
    print "$baseword $filename $word\n";
    $filename = ($PREFIX ? "$PREFIX/$filename" : $filename);
    my $first_entry = !(-e $filename);
    my $fh;
    if ($DEBUG) {
	open($fh, '>-');
    } else {
	open($fh, '>>', $filename) or die("couldn't write $filename: $!\n");
    }
    if ($first_entry) {
	print $fh ";;;;\n";
	print $fh ";;;; $baseword\n";
	print $fh ";;;;\n\n";
	#print $fh "\n(in-package :lxm)\n\n";
    }
    print $fh $function_start;
    if ($BASE500_FILENAME && base500_lookup($word)) {
	print $fh " :tags (:base500)\n";
    }
    # special case: used for "remotely"
    if ($function_start !~ /:words/i) {
	print $fh " :words (\n";
    } elsif ($function_start !~ /:words\s+\(/i) {
	print $fh " (\n";
    }
    print $fh $comment if ($comment);
    print $fh $entry;
    print $fh "))\n\n";
    close($fh);
}

sub output_wordlist {
    my($wordlist, $function_start, $comment, $entry) = @_;
    DEBUG("output_wordlist: \"$wordlist\"\n");
    $function_start =~ s/define-list-of-words/define-words/i;
    $entry =~ s/:senses\s+\(/\(senses/;
    $wordlist =~ s/^\s*:words\s+\(//;
    while ($wordlist =~ /\s*(\([^\)]+\)|(\S+))/g) {
	my $word = $1;
	next if (!$word);
	if ($word =~ /^\(/) {
	    $word =~ s/\)\)+$/\)/;
	} else {
	    $word =~ s/\)+$//;
	}
	if ($word) {
	    my $word_entry = "  ($word\n$entry)\n";
	    output_word($word, $function_start, $comment, $word_entry);
	}
    }
}

# For tagging some words as "base500"

sub base500_init {
    open(my $fh, '<', $BASE500_FILENAME) || die("$BASE500_FILENAME: $!\n");
    while (<$fh>) {
	my($baseword,$filename,$word) = split;
	$BASE500_WORDS{lc($word)} = $word;
    }
    close $fh;
}

sub base500_lookup {
    my($word) = @_;
    return $BASE500_WORDS{lc($word)};
}

#
# Debugging
#

sub DEBUG {
    if ($DEBUG) {
	print STDERR @_;
    }
}
