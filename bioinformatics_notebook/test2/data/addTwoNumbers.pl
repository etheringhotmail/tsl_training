#!/usr/bin/perl -w

use strict;
use warnings;


my $number1 = shift or die;
my $number2 = shift or die;
my $outfile = shift or die;

open(OUT, ">$outfile");


my $total = $number1 + $number2;

print OUT $total, "\n";