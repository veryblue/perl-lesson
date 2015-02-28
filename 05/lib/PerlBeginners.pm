#!/usr/bin/env perl

package PerlBeginners;

use strict;
use warnings;

sub perllevel {
	my $level = shift;
	
	if ($level = 1) {
		return 'レベル1';
	} elsif ($level = 2) {
		return 'レベル2';
	}

	return $level;
}


1;