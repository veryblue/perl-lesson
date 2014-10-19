#!usr/bin/env perl
use strict;
use warnings;

my $word  = "/usr/bin/env perl";
my @words = split '/' , $word;
print "@words\n";

for my $i (@words) {
	print $i . "\n";
}
