#!/usr/bin/perl

use 5.010;

my @arr = (1,1);

for ($i = 1; $i <= 20; $i = $i + 1) {
	push(@arr, $arr[$i-1] + $arr[$i]);
}

say join(", ", @arr);
