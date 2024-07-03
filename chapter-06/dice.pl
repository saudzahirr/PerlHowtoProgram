#!/usr/bin/perl

# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: July 3, 2024


# Problem 6.6

use strict;
use warnings;

sub rollDice {
    my ($times) = @_;
    my %counts;

    foreach ( 1..$times ) {
        my $n = 1 + int rand(6);
        if ( !exists $counts{ $n } ) {
            $counts{ $n } = 1;
        }
        else {
            ++$counts{ $n };
        }
    }
    return %counts;
}

my %simulation = rollDice(6000);

print "No. | Number of occurrences.\n";
foreach (sort keys %simulation) {
    print "$_   | ", $simulation{ $_ }, "\n";
}
