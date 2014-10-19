#!usr/bin/env perl
use strict;
use warnings;

print "x >>> ";
my $x = <STDIN>;
chomp $x;

print "y >>> ";
my $y = <STDIN>;
chomp $y;

my $res;

$res = $x + $y;
print "足し算：$x + $y = ".$res."\n";


$res = $x - $y;
print "引き算：$x - $y = ".$res."\n";


$res = $x * $y;
print "かけ算：$x * $y = ".$res."\n";


$res = $x / $y;
print "割り算：$x / $y = ".$res."\n";


$res = $x % $y;
print "あまり：$x % $y = ".$res."\n";


$res = $x ** $y;
print "べき乗：$x ** $y = ".$res."\n";

print "- - 8< - -\n";

