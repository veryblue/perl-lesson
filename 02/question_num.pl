#!usr/bin/env perl
use strict;
use warnings;

my $answer = 65;

my $num = <STDIN>;
chomp $num;


# if ($num > $answer) {
# 	print "too big\n";
# } else {
# 	print "too small\n";
# }

if ( $num == $answer ) {
	print "OK\n";
} elsif ( $num <= ( $answer +5 ) && $num >= ( $answer -5 ) ) {
	print "near\n";
} elsif ( $num > $answer ) {
	print "too big\n"
} elsif ( $num < $answer )  {
	print "too small\n";
}



