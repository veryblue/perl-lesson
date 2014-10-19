#!usr/bin/env perl
use strict;
use warnings;

my @inputs;

for my $i (0 .. 2) {
	print "$i番目>>>";
	$inputs[$i] = <STDIN>;
	chomp $inputs[$i];
}

my @array = sort { $a cmp $b } @inputs;


print "dedug - - -\n";
print "@array\n";


print "for var - - -\n";
for my $var ( @array) {
	print "$var\n";
}

print "for 範囲演算子 - - -\n";
for my $j ( 0 .. scalar @array -1 ) {
	print "$array[$j]\n";
}

