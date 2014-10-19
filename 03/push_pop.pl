#!usr/bin/env perl
use strict;
use warnings;

# ('Alice', 'Bob') という配列を作って出力してみましょう。
# 関数を使って 'Alice' を取り出して出力してみましょう。
# 関数を使って 'Bob' を取り出して出力してみましょう。
# 1.の配列を元に、関数を使って ('Zappa', 'Alice', 'Bob', 'Chris') という配列を作って出力してみましょう。

my @name = ('Alice', 'Bob');

# print $name[0] . "\n";

my $first = shift @name;

#print $first . "\n";

unshift @name , "Alice";


my $end = pop @name;
#print $end . "\n";

push @name, 'Bob';


unshift @name , 'Zappa';
push @name, 'Chris';

push @name, qw(Zappa Alics bob Chris);

for my $i (@name) {
	print $i . "\n";
}



