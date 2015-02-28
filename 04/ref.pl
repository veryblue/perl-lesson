#!/usr/bin/env perl

use strict;
use warnings;

# 配列とハッシュをそれぞれ1つずつ定義してから, 
# 第1引数に配列のリファレンス, 
# 第2引数にハッシュのリファレンスを受け取り,
# その中身を出力する(for文などを利用して...),
# output_array_and_hashというサブルーチンを書いてみよう.

my @array = qw/ abc def /;
my %hash  = (
    name => 'veryblue',
    born => 'Yokohama',
    from => 'sagamihara'
    );

sub output_arrya_and_hash {
    my ($array2, $hash2) = @_;

    for(@$array2) {
        print "$_\n";
    }


    my @keys = keys %$hash2;
    #print "@keys\n";
    for(@keys) {
        #print "$hash2->{$_}\n";

        my $string = $$hash2{$_};
        #my $string = $hash2->{$_};
        print "key: $_ -> value : $string\n";

    }

    for my $key (keys %$hash2) {
        my $value = $hash2->{$key};
        print " $key => $value\n";
    }


}

output_arrya_and_hash(\@array, \%hash);

#my $result = output_arrya_and_hash(\@array, \%hash);

#print $hash;
#print "\n"



