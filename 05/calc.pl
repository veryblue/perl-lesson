#!/usr/bin/env perl

use strict;
use warnings;

# 1. calc.pl
# 2つの数値を引数として, add (+), sub (-), mul (*), div (/), mod (%) といった key に演算結果を代入し,
# そのハッシュリファレンスを返り値とするような関数 calc を作成してください.
#
# 2. calc.pl
# 上記で作成した関数における引数が数字であるかどうか正規表現を使って判定するように改良してください.
# 数値以外が引数であった場合は undef を返すようにしてください.

sub calc {
    my ($num1, $num2) = @_;

    die "整数を入力してください" unless ($num1 =~ /^\d+$/);
    if (!($num2 =~ /^\d+$/)) {
        return undef;
    }
    
    return {
        add => $num1 + $num2,
        sub => $num1 - $num2,
        mul => $num1 * $num2,
        div => $num1 / $num2,
        mod => $num1 % $num2
    }
    
#    # 省略しない形
#    my $hash = {
#        add => $num1 + $num2,
#        sub => $num1 - $num2,
#        mul => $num1 * $num2,
#        div => $num1 / $num2,
#        mod => $num1 % $num2
#    };
#    return $hash;

}

use Data::Dumper;

my $result = calc(10, "a");
#print $result;

print Dumper($result);





