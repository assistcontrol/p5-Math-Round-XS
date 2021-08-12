use Test::More;

BEGIN { use_ok 'Math::Round::XS' }

ok $r = Math::Round::XS::nearest(5.123, 2) => 'nearest()';
is $r, 5.120 => 'right value for nearest';

done_testing;
