#!usr/bin/env perl
use strict;
use warnings;

my @array = qw/ 0120 123 XXX /;
my $tel   = join '-' , @array;
print $tel . "\n";


