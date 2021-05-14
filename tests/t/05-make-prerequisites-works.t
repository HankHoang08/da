use strict;
use warnings;
 
use Test::More;
use IPC::Open2;
use Data::Dumper;
use File::Temp qw/ tempfile tempdir /;

# use a BEGIN block so we print our plan before any modules loaded
BEGIN { plan tests => 3 }

chdir "..";

`make prerequisites`;

my $backtick_res = $?;

ok ( $backtick_res == 0, "make has target prerequisites" );

ok( -e $ENV{"HOME"} . "/.local/bin/pandoc", "pandoc exists");

ok( -x $ENV{"HOME"} . "/.local/bin/pandoc",  "pandoc is executable");


