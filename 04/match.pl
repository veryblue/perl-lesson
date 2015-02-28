#!/usr/bin/env perl

use strict;
use warnings;

# 引数として文字列を受け取り, その文字列にperlないしPerlが含まれるなら
# ｢Perl Monger!｣と表示するサブルーチンperl_checkerを書いてみましょう.

print ">>>";

my $input = <STDIN>;
chomp $input;
#print "$input\n";

sub perl_checker {

    my $str = shift;
    if ($str =~ /[pP]erl/) {
        print "Perl Monger!\n";
    }

}

perl_checker($input);
