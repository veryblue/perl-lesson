#!usr/bin/env perl
use strict;
use warnings;

my @array = ( 1 .. 100 );

# デバッグ
#print "@array\n";

# 変数使って処理する
for my $i ( @array) {

	if ( $i % 3 == 0 && $i % 5 == 0) {
		print "$i : FizzBuzz\n";
	} elsif ( $i % 5 == 0) {
		print "$i : Fizz\n";
	} elsif ( $i % 3 == 0 ) {
		print "$i : Buzz\n";
	} else {
		print "$i\n";
	}

}

# 変数の省略形
for ( @array ) {

	if ( $_ % 3 == 0 && $_ % 5 == 0) {
		print "$_ : FizzBuzz\n";
	} elsif ( $_ % 5 == 0) {
		print "$_ : Fizz\n";
	} elsif ( $_ % 3 == 0 ) {
		print "$_ : Buzz\n";
	} else {
		print "$_\n";
	}

}


