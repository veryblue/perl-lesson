#!usr/bin/env perl
use strict;
use warnings;
use utf8; # 内部の文字コードをutf8にする
binmode STDOUT, 'utf8';　# 日本語を扱う場合には、標準出力の文字コードを設定する。

my %hash = (
	name => 'shimizu',
	sex  => 'male',
	food => 'curry',
	);

# print "name : " . $hash{name} . "\n";
# print "sex  : " . $hash{sex} . "\n";
# print "food : " . $hash{food} . "\n";


my @keys = keys %hash;
print "@keys\n";


delete $hash{sex};
@keys = keys %hash;
print "@keys\n";

if (exists $hash{sex}) {
	delete $hash{sex};
} else {
	print "性別の要素は存在しまません";
}



