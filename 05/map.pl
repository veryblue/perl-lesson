#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;

# my @files = qw/foo.pl bar.pm baz.rb qux.py/;
# 上記の配列を引数にして、拡張子の後ろに .bak を付け足す map_bak 関数と、
# 末尾(拡張子)が pl、pm であるものを抜き出す grep_pl_and_pm を作成してください

my @files = qw/foo.pl bar.pm baz.rb qux.py/;

my @backups   = map_bak(@files);
my @pl_and_pm = grep_pl_and_pm(@files);

sub map_bak {
	map {$_ . ".bak"} @_;
}

sub grep_pl_and_pm {

#	省略しない形
#	my @array1 = @_;
#	my @array2 = grep { $_ =~/\.(pl|pm)$/ } @_;
#	return @array2;

	grep {$_ =~/\.p[lm]$/} @_;

}

#print "@backups\n";
#print "@pl_and_pm\n";

warn Dumper \@backups;
warn Dumper \@pl_and_pm;




