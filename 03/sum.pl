#!usr/bin/env perl
use strict;
use warnings;

my @num = ( 1 .. 100 );
my $sum = 0;

for my $i (@num) {
	$sum += $i;
}

print $sum . "\n";

