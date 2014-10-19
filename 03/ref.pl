#!usr/bin/env perl
use strict;
use warnings;
use Data::Dumper;
use utf8; # 内部の文字コードをutf8にする
binmode STDOUT, 'utf8';
# 日本語を扱う場合には、標準出力の文字コードを設定する。

my $hash_ref = {
	name    => 'shimizu',
	address => 'Tokyo',
	age     => '34',
	};

print $hash_ref . "\n";
print Dumper($hash_ref);

# use DDP 
