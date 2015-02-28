#!/usr/bin/env perl

use strict;
use warnings;

# この$strに格納された文字列を, 
# 置換を利用して, ｢I love perl｣に書き換えるようなコードを書いてみましょう.

my $str = 'I love ruby';

$str =~ s/ruby/perl/g;

print "$str\n"




