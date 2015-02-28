#!/usr/bin/env perl

use strict;
use warnings;

# このような配列のリファレンスを受け取り, 
# リファレンスに格納された文字列について, 
# ｢loves｣の後に記述されている好きな食べ物の単語を正規表現で取得し,
# ｢papix -> meat｣, ｢boolfool -> sushi｣のように表示するサブルーチン,
# love_foodを書いてみよう.

my $words_ref = [
    'papix loves meat!',
    'boolfool loves sushi!',
];

love_food($words_ref);

sub love_food {
	#print @_;
	my $words = shift @_;

	#print "@$words\n";
	for my $word (@$words) {
		if ($word =~ /(.+) loves (.+)!/) {
			print "$1 => $2\n";
		}
	}
}






