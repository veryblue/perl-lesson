#!usr/bin/env perl
use strict;
use warnings;

# 標準入力により数値を一つ読み込み, 
# その数値が偶数なら"even", 奇数なら"odd" という文字を出力する
# even_or_odd.plを作成しよう

print ">>> ";
my $num = <STDIN>;
chomp $num;

if ($num % 2 == 0) {
	print "even\n";
} else {
	print "odd\n";
}
