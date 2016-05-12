#!/usr/bin/perl

package TextTagger::Minipar;
require Exporter;
@ISA = qw(Exporter);
@EXPORT_OK = qw(tag_minipar);

use TextTagger::Escape qw(escape_for_quotes);
use TextTagger::Tags2Trips qw(trips2tagNative);

use strict vars;

sub tag_minipar
{
    my ($trips_module, $text) = @_;
    my $reply_content = $trips_module->send_and_wait("(request :content (get-minipar-constits \"" . escape_for_quotes($text) . "\"))");
    die "Bad reply to get-minipar-constits: " .
        Data::Dumper->Dump([$reply_content], ['content'])
      unless (lc($reply_content->[0]) eq 'minipar-constits' and
              ref($reply_content->[1]) eq 'ARRAY');
    return [map { trips2tagNative($_) } @{$reply_content->[1]}];
}

push @TextTagger::taggers, {
  name => "minipar",
  tag_function => \&tag_minipar,
  output_types => [qw(phrase pos)],
  input_text => 1
};

1;
