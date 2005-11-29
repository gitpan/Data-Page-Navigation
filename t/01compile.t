use Test::More tests => 3;
BEGIN { use_ok('Data::Page::Navigation') };

can_ok('Data::Page','pages_per_navigation');
can_ok('Data::Page','pages_in_navigation');
