#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;

# 引数として与えられた文字列が、数値A 演算子 数値Bという文字列であれば、
# その式を計算して結果を返す関数calc_stringを書いてみましょう
#   「数値A」「演算子」「数値B」の間にはそれぞれ半角スペースが入っています
#   数値は正･負の整数とし、演算子は+-*/%が使えるものとします
#   引数が与えられなかった場合（空の文字列の場合)は、undefを返すこととます
#   引数が 数値A 演算子 数値B というフォーマットに一致しない場合もundefを返すこととします
# 関数calc_stringとwhile文を使って、Ctrlキーとdキーを押すまでの間、
# 標準入力から文字列を受け取り、文字列に書かれた式を計算するようなコードを書いてみましょう

# Perlは0で割ると死ぬ

sub calc_string {
	my $string = shift;

	if ($string =~/^(\d+)\s*(\+|-|\*|\/|%)\s*(\d+)$/) {
		#return "$1 $2 $3";
		if ($2 eq "+") {
			return $1 + $3;

		} elsif ($2 eq "-") {
			return $1 - $3;

		} elsif ($2 eq "*") {
			return $1 * $3;

		} elsif ($2 eq "/") {
			return $1 / $3;

		} elsif ($2 eq "%") {
			return $1 % $3;

		} else {
			undef;
		}

	} else {
		undef;
	}

}

while(my $input = <STDIN>) {
	chomp $input;
	print calc_string($input);
	print "\n\n";
}

