#!/usr/bin/env perl

use Test::More;
use YAPC;

is YAPC::year(), '2015';
is YAPC::month(), '8';
is YAPC::day(), '20';
ok !YAPC::is_yet('2015-08-19');
ok YAPC::is_yet('2015-08-20');
ok YAPC::is_yet('2015-08-21');

done_testing();


