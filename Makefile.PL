use ExtUtils::MakeMaker;

WriteMakefile(
    NAME => 'Math::Round::XS',
    VERSION_FROM => 'lib/Math/Round/XS.pm',
    CONFIGURE_REQUIRES => { 'ExtUtils::MakeMaker' => '7.12' },
    TEST_REQUIRES => { 'Test::More' => 0 },
    ABSTRACT_FROM => 'lib/Math/Round/XS.pm',
    AUTHOR => 'Adam Weinberger',
    OPTIMIZE => '-O3',
    LICENSE => 'mit',
    XSMULTI => 1
);
