use strict;
use Test::More;
use App::revealup::cli::serve;
use App::revealup::util;

my $test_dir = App::revealup::util::share_path([qw/t/]);
ok $test_dir;
ok $test_dir->is_dir();

my $html = App::revealup::cli::serve->render($test_dir->child('test.md'));
ok $html;

done_testing();
