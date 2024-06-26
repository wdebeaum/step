#!/usr/bin/perl -CSD

# tests for the Units tagger
# see also MusicTests.pl for the Music tagger

# Note that tests here assume we're using GNU units; macos units sometimes
# gives slightly different results that are actually OK in that situation.
# These differences are noted in comments in the first test where they apply.

use utf8;

print "\${^UNICODE}=${^UNICODE}\n\$^V=${^V}\n";

use lib '../../../../etc/util'; # for add_suffix
use lib '../../../';
use lib '../';
use Data::Dumper;
use Term::ANSIColor qw(:constants);
use TextTagger::Util qw(structurally_equal);
use TextTagger::CombineTags qw(combine_tags);
use TextTagger::Tags2Trips qw(sortTags tags2trips);
use TextTagger::Units qw(init_units_tagger tag_units);

use strict vars;

my @tests = (
  # the simplest imaginable test
  { text => 'meter',
    tags => [
      { type => 'sense',
        start => 0, end => 5, lex => 'meter',
	'penn-pos' => ['NN'], lftype => ['LENGTH-UNIT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'meter',
	  dimensions => 'length'
	}
      },
    ]
  },
  #
  # Araya et al.
  #
  # Table 1 column headings (simplified so each unit appears once)
  { text => 'Depth (cm)',
    tags => [
      { type => 'sense',
        start => 7, end => 9, lex => 'cm',
	'penn-pos' => ['NN'], lftype => ['LENGTH-UNIT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'centimeter',
	  dimensions => 'length'
	}
      },
    ]
  },
  { text => 'Clay (%)',
    tags => [
      { type => 'sense',
        start => 6, end => 7, lex => '%',
	'penn-pos' => ['NN'], lftype => ['PERCENT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'percent', # macos: percent=>%
	  dimensions => '1'
	}
      },
    ]
  },
  { text => 'LL (mm/mm)',
    tags => [
      { type => 'sense',
        start => 4, end => 9, lex => 'mm/mm',
	'penn-pos' => ['NN'], lftype => ['NUMBER-UNIT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => '1',
	  dimensions => '1'
	}
      },
    ]
  },
  { text => 'BD (g/cm3)',
    tags => [
      { type => 'sense',
        start => 4, end => 9, lex => 'g/cm3',
	'penn-pos' => ['NN'], lftype => ['MEASURE-UNIT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'centimeter^-3*gram',
	  dimensions => 'length^-3*mass'
	}
      },
    ]
  },
  # Table 2 assorted cells with units
  { text => '37◦ 9′',
    tags => [
      { type => 'sense',
        start => 2, end => 3, lex => '◦',
	'penn-pos' => ['NN'], lftype => ['ANGLE-UNIT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'arcdeg',
	  dimensions => 'angle'
	}
      },
      { type => 'sense',
        start => 5, end => 6, lex => '′',
	'penn-pos' => ['NN'], lftype => ['ANGLE-UNIT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'arcmin',
	  dimensions => 'angle'
	}
      },
    ]
  },
  { text => '7 cm',
    tags => [
      { type => 'sense',
        start => 2, end => 4, lex => 'cm',
	'penn-pos' => ['NN'], lftype => ['LENGTH-UNIT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'centimeter',
	  dimensions => 'length'
	}
      },
    ]
  },
  { text => '30 mm over 3 days',
    tags => [
      { type => 'sense',
        start => 3, end => 5, lex => 'mm',
	'penn-pos' => ['NN'], lftype => ['LENGTH-UNIT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'millimeter',
	  dimensions => 'length'
	}
      },
      { type => 'sense',
        start => 13, end => 17, lex => 'days',
	'penn-pos' => ['NNS'], lftype => ['TIME-UNIT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'day',
	  dimensions => 'time'
	}
      },
    ]
  },
  { text => '45 mm',
    tags => [
      { type => 'sense',
        start => 3, end => 5, lex => 'mm',
	'penn-pos' => ['NN'], lftype => ['LENGTH-UNIT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'millimeter',
	  dimensions => 'length'
	}
      },
    ]
  },
  { text => '80% field capacity from the top',
    tags => [
      { type => 'sense',
        start => 2, end => 3, lex => '%',
	'penn-pos' => ['NN'], lftype => ['PERCENT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'percent',
	  dimensions => '1'
	}
      },
    ]
  },
  { text => '4.4 plants/m2',
    tags => [
      { type => 'sense',
        start => 4, end => 13, lex => 'plants/m2',
	'penn-pos' => ['NNS'], lftype => ['MEASURE-UNIT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'meter^-2*plants',
	  dimensions => 'length^-2*unknown'
	}
      },
    ]
  },
  { text => '(110 kg/ha)',
    tags => [
      { type => 'sense',
        start => 5, end => 10, lex => 'kg/ha',
	'penn-pos' => ['NN'], lftype => ['MEASURE-UNIT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'hectoare^-1*kilogram', # macos: kilogram=>kg
	  dimensions => 'length^-2*mass'
	}
      },
    ]
  },
  { text => 'Initial NO3 (PPM)', # macos: lacks any "partsper..." units
    tags => [
      { type => 'sense',
        start => 13, end => 16, lex => 'PPM',
	'penn-pos' => ['NN'], lftype => ['NUMBER-UNIT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'partspermillion',
	  dimensions => '1'
	}
      },
    ]
  },
  # various prose with units
  { text => 'Long-term mean annual rainfall and reference evapotranspiration were approximately 1246 mm and 1790 mm, respectively, while the annual mean daily maximum and minimum temperature were 28.0◦C and 13.7◦C, respectively.',
    tags => [
      { type => 'sense',
        start => 88, end => 90, lex => 'mm',
	'penn-pos' => ['NN'], lftype => ['LENGTH-UNIT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'millimeter',
	  dimensions => 'length'
	}
      },
      { type => 'sense',
        start => 100, end => 102, lex => 'mm',
	'penn-pos' => ['NN'], lftype => ['LENGTH-UNIT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'millimeter',
	  dimensions => 'length'
	}
      },
      # FIXME!!!
      # "°C" is actually ambiguous between absolute temperature measurement in
      # Celsius, and difference between temperatures (where it is equivalent to
      # Kelvin). GNU units has degC for differences, and thus says these
      # examples have :units "kelvin", which is wrong in this case. GNU units
      # has the tempC() function for absolute temperatures, but we don't have a
      # way to use it with UC2 yet. macos units uses degC for absolute
      # temperatures, but again gives atypical output for conversions so we
      # can't use it with UC2 yet. But at least TT gives :units "degC" there.
      { type => 'sense',
        start => 187, end => 189, lex => '◦C',
	'penn-pos' => ['NN'], lftype => ['TEMPERATURE-UNIT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'kelvin',
	  dimensions => 'temperature'
	}
      },
      { type => 'sense',
        start => 198, end => 200, lex => '◦C',
	'penn-pos' => ['NN'], lftype => ['TEMPERATURE-UNIT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'kelvin',
	  dimensions => 'temperature'
	}
      },
    ]
  },
  { text => 'The soils in the study area were reddish brown clay soils with a topsoil (0-0.25 m) bulk density of 1.06-1.15 g/cm3 with organic carbon and total nitrogen contents (in the top 0.25 m) of 1.6% and 1.8%, respectively.',
    tags => [
      { type => 'sense',
        start => 81, end => 82, lex => 'm',
	'penn-pos' => ['NN'], lftype => ['LENGTH-UNIT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'meter',
	  dimensions => 'length'
	}
      },
      { type => 'sense',
        start => 110, end => 115, lex => 'g/cm3',
	'penn-pos' => ['NN'], lftype => ['MEASURE-UNIT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'centimeter^-3*gram',
	  dimensions => 'length^-3*mass'
	}
      },
      { type => 'sense',
        start => 181, end => 182, lex => 'm',
	'penn-pos' => ['NN'], lftype => ['LENGTH-UNIT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'meter',
	  dimensions => 'length'
	}
      },
      { type => 'sense',
        start => 190, end => 191, lex => '%',
	'penn-pos' => ['NN'], lftype => ['PERCENT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'percent',
	  dimensions => '1'
	}
      },
      { type => 'sense',
        start => 199, end => 200, lex => '%',
	'penn-pos' => ['NN'], lftype => ['PERCENT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'percent',
	  dimensions => '1'
	}
      },
    ]
  },
  # various issues with dimensionless units (see also "%" and "mm/mm" above)
  { text => "88 mph",
    tags => [
      { type => 'sense',
	start => 3, end => 6, lex => 'mph',
	'penn-pos' => ['NN'], lftype => ['SPEED-UNIT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'mph',
	  dimensions => 'length*time^-1'
	}
      }
    ]
  },
  { text => "42 newtons",
    tags => [
      { type => 'sense',
	start => 3, end => 10, lex => 'newtons',
	'penn-pos' => ['NNS'], lftype => ['WEIGHT-UNIT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'newton',
	  dimensions => 'length*mass*time^-2'
	}
      }
    ]
  },
  #
  # stuff that shouldn't be tagged
  #
  # common short English words
  { text => "
(a) (act) (add) (age) (ago) (aid) (aim) (air) (all) (amp) (an) (and) (ant) (any) (arc) (arm) (art) (as) (ash) (ask) (at) (aye)
(bad) (bag) (ban) (bar) (bat) (bay) (be) (bed) (bee) (beg) (bet) (bid) (big) (bin) (bow) (box) (boy) (bus) (but) (buy) (by) (bye)
(cab) (can) (cap) (car) (cat) (cop) (cos) (cow) (cry) (cut)
(die) (dig) (dip) (do) (dog) (dot) (dry) (due)
(ear) (eat) (egg) (ego) (end) (era) (eye)
(fan) (far) (fat) (fax) (fee) (few) (fig) (fit) (fix) (fly) (fog) (for) (fox) (fun) (fur)
(gap) (gas) (gay) (get) (gig) (go) (god) (gun) (gut) (guy)
(ham) (has) (hat) (hay) (he) (hen) (her) (hey) (him) (hip) (his) (hit) (hot) (how) (hug) (hut)
(I) (ice) (if) (ill) (in) (inn) (ion) (it) (its)
(jam) (jar) (jaw) (jet) (jew) (job) (joy)
(key) (kid) (kit)
(lab) (lad) (lap) (law) (lay) (leg) (let) (lid) (lie) (lip) (log) (lot) (low)
(man) (map) (may) (me) (meet) (mid) (mix) (mud) (mug) (my)
(net) (new) (no) (nod) (nor) (not) (now) (nun) (nut)
(oak) (odd) (of) (off) (oil) (ok) (old) (on) (one) (opt) (or) (our) (out) (owe) (owl) (own)
(pad) (pal) (pan) (par) (pat) (pay) (pen) (per) (pet) (pie) (pig) (pin) (pit) (pop) (pot) (pub) (put)
(ram) (rat) (raw) (ray) (red) (rib) (rid) (rip) (rob) (rod) (row) (rub) (rug) (run)
(sad) (say) (sea) (see) (set) (sex) (she) (shy) (sin) (sip) (sir) (sit) (ski) (sky) (so) (son) (spy) (sue) (sum) (sun)
(tap) (tax) (tea) (the) (tie) (tin) (tip) (to) (toe) (too) (top) (toy) (try)
(up) (us) (use)
(van) (vat) (via)
(war) (way) (we) (wee) (wet) (who) (why) (win) (wit)
(ye) (yep) (yes) (yet) (you)
", tags => [] },
  # lgalescu's example where "years has" was tagged improperly, causing an error
  { text => 'However, the recent reauthorization AGOA for another 10 years has provided Ethiopia and Africa yet another chance to make use of this opportunity to boost export and overall competitions along with other African countries.',
    tags => [
      { type => 'sense',
        start => 56, end => 61, lex => 'years',
	'penn-pos' => ['NNS'], lftype => ['TIME-UNIT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'tropicalyear',
	  dimensions => 'time'
	}
      },
    ]
  },
  # another lgalescu example, "3-4 months are", with context hallucinated by me
  { text => 'The next 3-4 months are hot.',
    tags => [
      { type => 'sense',
        start => 13, end => 19, lex => 'months',
	'penn-pos' => ['NNS'], lftype => ['TIME-UNIT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'month',
	  dimensions => 'time'
	}
      },
    ]
  },
  # lgalescu, "Micha'el Tanchum" with context hallucinated
  { text => "42 Micha'el Tanchum supporters", tags => [] },
  # lgalescu, "last year as" (arguably "year" and "decade" could be correctly tagged as time units, but they're not in a context we allow)
  { text => "The energy sector was the biggest loser in the S&P 500 last year as well as for all of last decade.", tags => [] },
  # lgalescu, "Miami", context hallucinated
  { text => "42 Miami residents", tags => [] },
  # lgalescu, "...mid-20s °C in..."
  { text => "Last week temperatures remained above-normal averaging up to 11°C higher than normal across northern Kazakhstan. Maximum temperatures reached 20°C in far northern parts of southern Kazakhstan and in the mid-20s °C in parts of western Afghanistan. Next week, temperatures are likely to vary with abnormal heat and abnormal cold impacting the region.",
    tags => [
      { type => 'sense',
        start => 63, end => 65, lex => '°C',
	'penn-pos' => ['NN'], lftype => ['TEMPERATURE-UNIT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'kelvin',
	  dimensions => 'temperature'
	}
      },
      { type => 'sense',
        start => 144, end => 146, lex => '°C',
	'penn-pos' => ['NN'], lftype => ['TEMPERATURE-UNIT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'kelvin',
	  dimensions => 'temperature'
	}
      },
      { type => 'sense',
        start => 211, end => 213, lex => '°C',
	'penn-pos' => ['NN'], lftype => ['TEMPERATURE-UNIT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'kelvin',
	  dimensions => 'temperature'
	}
      }
    ]
  },
  # lgalescu, "... x% drop in ..."
  # also, discovered later, "sale" as second*atto-liter*atomiccharge
  { text => "a 52% drop in sale of essential goods",
    tags => [
      { type => 'sense',
        start => 4, end => 5, lex => '%',
	'penn-pos' => ['NN'], lftype => ['PERCENT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'percent',
	  dimensions => '1'
	}
      }
    ]
  },
  { text => "a 0.95% drop in coffee consumption",
    tags => [
      { type => 'sense',
        start => 6, end => 7, lex => '%',
	'penn-pos' => ['NN'], lftype => ['PERCENT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'percent',
	  dimensions => '1'
	}
      }
    ]
  },
  # test that "drop" still works as a unit when appropriate
  { text => "5 drops",
    tags => [
      { type => 'sense',
        start => 2, end => 7, lex => 'drops',
	'penn-pos' => ['NNS'], lftype => ['VOLUME-UNIT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'drop',
	  dimensions => 'length^3'
	}
      },
    ]
  },
  # lgalescu, "epidemic" as e*pi*demi-c
  { text => 'epidemic', tags => [] },
  # test "RPM" in order to see if getting rid of "pi" as a unit messes up general angle units like "revolution" and things based on it (it does)
  { text => 'RPM',
    tags => [
      { type => 'sense',
        start => 0, end => 3, lex => 'RPM',
	'penn-pos' => ['NN'], lftype => ['MEASURE-UNIT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => 'rpm',
	  dimensions => 'angle*time^-1'
	}
      },
    ]
  },
  # lgalescu, "...Fig. 7a are..."
  { text => 'The sector-activity patterns depicted in Fig. 7a are similar to the patterns observed at the sector level', tags => [] },
  #
  # errors lgalescu reported in 2020-08-29 email "more issues with units"
  #
  # slashes that aren't division...
  # ...after a number that isn't a measurement (a year)
  # (actually got stuck parsing the denominator at "i")
  { text => '* Additionally, many far northern areas Afar did not experience an extension of the 2019 Karan/Kiremt season.', tags => [] },
  # ...after "in"
  # (actually got stuck parsing the denominator at "o")
  { text => '* The assessment revealed that in all/almost areas visited some level of coordination mechanism has been set up though there is no uniformity in the naming, structure, membership and scope of activity.', tags => [] },
  # ...after a figure number
  # (actually got stuck parsing the denominator at "o")
  { text => '* FIGURE 1 Liberia / Sectoral contributions to real GDP growth"', tags => [] },
  # postfix digits that aren't exponents...
  # ...after a year: "almost 8"
  # (actually got stuck parsing the numerator at "o")
  { text => '* Moreover, to address the needs of its most vulnerable population, Ethiopia has successfully implemented a largescale safety net program - the Productive Safety Net Program (PSNP), the biggest safety net in Africa except for South Africa - since 2005 that covered in 2018 almost 8 million direct beneficiaries.', tags => [] },
  # ...in parens: "example 2"
  # (actually got stuck parsing the numerator at "x")
  { text => '* This either underestimates (see example 1) or overestimates (example 2) population within a travel time band.', tags => [] },
  # semi- that doesn't mean "exactly half of the following unit"
  # (actually got stuck parsing the numerator at "r")
  { text => '* However, these factors did not trigger significant irrigation investments, even in semi-arid areas where the payoff to irrigation is high.', tags => [] },
  # "cash-based" error, after "in"
  # (actually got stuck parsing the numerator at "a" (wait, what?))
  { text => "* Disbursed US$ 524 million in cash-based transfers across 56 countries and maximized WFP's digital payment systems to serve 10 million unique beneficiaries - the most to date.", tags => [
    # arguably "US$ 524 million" should be tagged, but we don't do currency
  ] },
  # lgalescu reported on 2020-09-23
  { text => "RNS Number : 2630E\nKEFI Minerals plc", tags => [] },
  # lgalescu 2020-09-25, "business" != bushel*second*inch*charge*second*second
  { text => "A local company engaged in business promotion", tags => [] },
  # lgalescu 2021-01-28, "are" is verb, not area unit (also on macos "deeply" != deci-*charge*charge*pico-*lightyear)
  { text => 'forecasts for 2018 are deeply concerning', tags => [] },
);
=begin
  templates for making tests

  { text => '', tags => [] },
  { text => '',
    tags => [
      { type => 'sense',
        start => 0, end => , lex => '',
	'penn-pos' => ['NN'], lftype => ['MEASURE-UNIT'],
	'domain-specific-info' => {
	  domain => 'cwms',
	  type => 'units',
	  units => '',
	  dimensions => ''
	}
      },
    ]
  },
=cut

my $pretty = 0;
my $format = undef;
my $USAGE = <<EOU;
USAGE: 
  ./UnitsTests.pl [options] [first-test-index [last-test-index]]

Runs all the tests if no test indices are supplied. If only first-test-index is
supplied, runs only that test (even if it would normally be skipped). If
last-test-index is also supplied, runs all the tests in the range, inclusive.
Note that options must occur first, before any indices.

Options:

--help
  	Prints this help text and exits.
--format=native|lattice
	Prints the correct output tags from each test after running the test,
	in the selected format. "lattice" is what TRIPS uses, "native" is
	closer to TextTagger's internal data structures.
--pretty
	(only useful with --format) Adds whitespace to the formatted output
	tags to make them easier to read.

Output:

Each selected test prints one line to STDOUT:

√ 123. foo bar
A BBB  CCCCCCC

A = test status (√=passed; X=failed; E=errored; S=skipped)
B = test index
C = input text

Failed tests also print a colorized diff of the actual and expected tags, in
Perl format (this isn't affected by --format). Errored tests print the error
message.

After all tests finish, a summary is printed, counting how many tests had each
status.
EOU

while (@ARGV and $ARGV[0] =~ /^--/) {
  $_ = shift @ARGV;
  if (/^--help$/) {
    print $USAGE;
    exit;
  } elsif (/^--format=(native|lattice)$/) {
    $format = $1;
  } elsif (/^--pretty$/) {
    $pretty = 1;
  } else {
    die "Invalid argument: $_\n$USAGE";
  }
}

if (@ARGV == 1) {
  @tests = ($tests[$ARGV[0]]);
} elsif (@ARGV == 2) {
  @tests = @tests[$ARGV[0]..$ARGV[1]];
}

my @key_order = qw(domain type start end lex penn-pos lftype domain-specific-info units dimensions);
my %ordered_keys = ();
for (@key_order) { $ordered_keys{$_} = 1; }

$Data::Dumper::Deepcopy = 1;
$Data::Dumper::Sortkeys = sub {
  my $h = shift;
  [
    (map { exists($h->{$_}) ? ($_) : () } @key_order),
    sort { $a cmp $b } grep { !exists($ordered_keys{$_}) } keys %$h
  ]
};

# this function is evil
sub printdiff {
  my ($x, $y) = @_;
  $^F = 7; # prevent 4 more fd's from being closed when we exec diff
  pipe READX, WRITEX;
  pipe READY, WRITEY;
  my $xpid = fork;
  if ($xpid == 0) { # x writer child
    close READX;
    close READY;
    close WRITEY;
    print WRITEX $x;
    close WRITEX;
    exit;
  }
  my $ypid = fork;
  if ($ypid == 0) { # y writer child
    close READX;
    close READY;
    close WRITEX;
    print WRITEY $y;
    close WRITEY;
    exit;
  }
  close WRITEX;
  close WRITEY;
  my $xfd = fileno(READX);
  my $yfd = fileno(READY);
  system("diff -u /dev/fd/$xfd /dev/fd/$yfd | perl -p -e 'use Term::ANSIColor qw(:constants); \$_=\"\" if (/^--- |^\\+\\+\\+ /); s/^-.*/RED . \$& . RESET/gem; s/^\\+.*/GREEN . \$& . RESET/gem;'");
  close READX;
  close READY;
  waitpid $xpid, 0;
  waitpid $ypid, 0;
}

my $self = +{};
init_units_tagger($self);

my ($passed, $failed, $errored, $skipped) = (0,0,0,0);
my $i = $ARGV[0] || 0;
for my $test (@tests) {
  print BOLD, BLUE, "  $i. " . $test->{text} . "\r";
  if ($test->{skip} && !(@ARGV == 1 && $ARGV[0] == $i)) {
    # test was marked to be skipped, and was not the only test we were asked to
    # run
    print BLUE, "S\n", RESET;
    $skipped++;
  } else {
    eval {
      my @tags = @{tag_units($self, $test->{text})};
      @tags = sortTags(@tags);
      if (structurally_equal(\@tags, $test->{tags})) {
	$passed++;
	print GREEN, "√\n", RESET;
      } else {
	$failed++;
	print RED, "X\n", RESET;
	#print Data::Dumper->Dump([\@tags], ['*actual']);
	printdiff(Data::Dumper->Dump([\@tags], ['*actual']), Data::Dumper->Dump([$test->{tags}], ['*expect']));
      }
      1
    } || do {
      $errored++;
      print YELLOW, "E\n", WHITE, "$@\n", RESET;
    };
  }
  if ($format) {
    my $combined_tags =
      ($format eq 'lattice' ? # only lattice format requires combining tags
	[sortTags(combine_tags(+{}, @{$test->{tags}}))] :
	$test->{tags});
    my $kqml = join('', map { KQML::KQMLAsString($_) . "\n" }
			    tags2trips($combined_tags, $format));
    if ($pretty) {
      $kqml =~ s/((?<=\()| )(?=:|\()/
	my $b4 = $`;
	if ($b4 =~ m!:[a-z-]+$!) {
	  ' '
	} else {
	  my $indent = scalar(@{[$b4 =~ m!\(!g]}) - scalar(@{[$b4 =~ m!\)!g]});
	  "\n" . ('  'x$indent)
	}
      /ge;
    }
    print RESET, $kqml;
  }
  $i++;
}
print BOLD, "Summary:\n", GREEN, "  passed:  $passed\n", RED, "  failed:  $failed\n", YELLOW, "  errored: $errored\n", BLUE, "  skipped: $skipped\n", RESET;
exit 1 if ($errored || $failed);
