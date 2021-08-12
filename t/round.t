use Test::More;

BEGIN { use_ok 'Math::Round::XS' }

ok my $r = Math::Round::XS::round(5.3) => 'round() down';
is $r, 5 => 'right value for round down';

ok $r = Math::Round::XS::round(5.8) => 'round() up';
is $r, 6 => 'right value for round up';

done_testing;
