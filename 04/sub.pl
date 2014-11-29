#!/usr/bin/env perl

use strict;
use warnings;

# 2つの引数の和を計算するaddと同様に, 
# 2つの引数の差を計算するmin, 
# 積を計算するmul, 
# 商を計算するdivというサブルーチンを作ってみよう.
# これらのサブルーチンが正しく実装できているか
# (与えた2つの引数に対して, 適切な値を返すか)を確認するコードを書いてみよう.

sub add {
    my ($left, $right) = @_;
    return $left + $right;
}

sub min {
    my ($left, $right) = @_;
    return $left - $right;
}

sub mul {
    my ($left, $right) = @_;
    return  $left * $right;
}

sub div {
    my ($left, $right) = @_;
    return $left / $right;
}

sub add2 {
    my $sum = 0;

    for(@_) {
        $sum += $_;   
    }
    return $sum;
}

my $result = add2(30, 6);

# test
if ($result == 36) {
    print "add2 ok\n"
}

print $result;
print "\n"



