use 5.006;
use ExtUtils::MakeMaker;
WriteMakefile(
    NAME              => 'Data::Page::Navigation',
    VERSION_FROM      => 'lib/Data/Page/Navigation.pm',
    PREREQ_PM         => {
        'Data::Page'=>'2.0'
    },
    ($] >= 5.005 ?
      (ABSTRACT_FROM  => 'lib/Data/Page/Navigation.pm',
       AUTHOR         => 'Masahiro Nagano <kazeburo@gmail.com>') : ()),
);
