#!/usr/bin/env perl -I blib/lib -I blib/arch

use Math::Round ();
use Math::Round::XS ();
use Benchmark qw(cmpthese);

srand;

print "round()\n";
cmpthese(10_000_000, {
    'Math::Round' => sub { Math::Round::round( int(rand(100)) ) },
    'Math::Round::XS' => sub { Math::Round::XS::round( int(rand(100)) ) }
});

print "nearest()\n";
cmpthese(10_000_000, {
    'Math::Round' => sub { Math::Round::nearest(rand(10), 2) },
    'Math::Round::XS' => sub { Math::Round::XS::nearest(rand(10), 2) }
});
