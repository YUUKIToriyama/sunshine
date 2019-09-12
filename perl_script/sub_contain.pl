#!/usr/bin/perl

use strict;
use warnings;

# Rubyでいうところの String#include?() のperl版
sub include {
	my ($str, $other_str) = @_;
	if ($str =~ m/$other_str/) {
		return 1;
	} else {
		return 0;
	}
}

print include("tanaka", "ana");
print "\n";
print include("tanaka", "aza");
print "\n";
