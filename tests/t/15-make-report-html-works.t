use strict;
use warnings;
 
use Test::More;
use IPC::Open2;
use Data::Dumper;
use File::Temp qw/ tempfile tempdir /;

# use a BEGIN block so we print our plan before any modules loaded
BEGIN { plan tests => 2 }

chdir "..";

`make report.html`;

my $backtick_res = $?;

ok ( $backtick_res == 0, "make has target report.html" );

ok( -e "report.html", "report.html created");



