#!/usr/bin/env perl

# FindBin;

package YAPC;

use strict;
use warnings;

sub year {
	return "2015";
}

sub month {
	return "8";
}

sub day {
	return "20";
}

sub is_yet {
	my $input = shift;

	if ($input =~ /(\d+)-(\d+)-(\d+)/) {

		# warn "$1 $2 $3";
		
		if ($1 >= 2015 && $2 >= 8 && $3 >= 20) {
			return 1;
		}
	}
	return 0;
}

1;