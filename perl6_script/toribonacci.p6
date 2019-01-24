#!/usr/bin/perl6

my @arr = 0,0,1;

loop (my $i = 1; $i <= 20; $i++) {
	@arr.push(@arr[$i-1] + @arr[$i] + @arr[$i+1]);
}

say @arr;
