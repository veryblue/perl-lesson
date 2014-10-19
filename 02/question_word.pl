#!usr/bin/env perl
use strict;
use warnings;

my $answer = 'perl'; # 好きな文字を入力

my $string = <STDIN>;
chomp $string;


if ( $string eq $answer ) {
	print "OK\n";
} else {
	print "NG\n";
}



