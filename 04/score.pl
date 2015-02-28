#!/usr/bin/env perl

use strict;
use warnings;

my $papix = {
    name        => 'papix',
    affiliation => 'namba.pm',
    perl        => 60,
    python      => 50,
    ruby        => 50,
    php         => 80,
    binary      => 30,
};
my $boolfool = {
    name        => 'boolfool',
    affiliation => 'namba.pm',
    perl        => 40,
    python      => 10,
    ruby        => 20,
    php         => 30,
    binary      => 10,
};
my $moznion = {
    name        => 'moznion',
    affiliation => 'hachioji.pm',
    perl        => 100,
    python      => 70,
    ruby        => 80,
    php         => 50,
    binary      => 50,
};
my $binarian = {
    name        => 'binarian',
    affiliation => 'hachioji.pm',
    perl        => 10,
    python      => 11,
    ruby        => 1,
    php         => 100,
    binary      => 100,
};
my $uzulla = {
    name        => 'uzulla',
    affiliation => 'hachioji.pm',
    perl        => 1,
    python      => 0.01,
    ruby        => 0.5,
    php         => 4,
    binary      => 0.01,
};


# 1. 点数の合計
# 2. 言語毎の平均
# 3. 五段階評価
# 4. 所属毎の perl のスコアが 60 以上の人の名前を格納する
# 5. JSON風Dumper

print $uzulla->{perl} ."\n";

my @people = ($papix, $boolfool, $moznion, $binarian, $uzulla);

my @languages = qw/ perl python ruby php binary /;

for my $person (@people) {
    print "name: $person->{name}\n";

    my $sum = 0;
    for my $language (@languages) {
        $sum += $person->{$language};
    }
    $person->{sum} = $sum;

    $sum += $person->{perl};
}

use Data::Dumper;
print Dumper(@people);

for my $person (@people) {
    print "$person->{name} さんの合計点は、 $person->{sum}\n";
}

print "--------------\n";

my %avarage = (

    );

for my $person (@people) {
    
    $avarage{$person} = 0;
    

}

#my %language_average = (
#        perl => 0,
#        python => 0,
#    )
#for my $language (@languages) {
#
#    my $sum = 0;
#    for my $person (@people){
#        print "$language : $person->{$language} \n";
#        
#    }
#
#}


















