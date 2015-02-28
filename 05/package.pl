#!/usr/bin/env perl

use strict;
use warnings;

# PerlEntranceというpackageの中に、tokyo, osakaという名前の、それぞれ引数を持たないサブルーチンを作りましょう
# tokyoにはTokyo!, osakaにはOsaka!という文字列を返す機能を持たせましょう

package PerlEntrance {
	sub tokyo {
		return "Tokyo!";
	}

	sub osaka {
		return "Osaka!";
	}
}

print PerlEntrance::tokyo . "\n";
print PerlEntrance::osaka . "\n";


