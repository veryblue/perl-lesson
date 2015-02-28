#!/usr/bin/env perl

use strict;
use warnings;

print ">>>";

while (chomp(my $input = <STDIN>)) {

	if ($input =~ /0/) {
		last;
	} elsif ($input =~ /[pP]erl/ ) {
		print "Find Perl!\n";
	} elsif ($input =~ /python/i) {
		print "Find Python!\n";
	}

	if ($input =~ /(perl|ruby|python)/) {
		print "Love Programming!\n";
	}

	print "\n>>> ";

}



