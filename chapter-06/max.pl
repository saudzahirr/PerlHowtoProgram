#!/usr/bin/perl

# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: July 3, 2024


# Problem 6.7

use strict "subs";

# Iterative Max
sub getIterativeMax {
    my ( $max ) = @_;
    foreach ( @_ ) {
        if ( $max < $_ ) {
            $max = $_
        }
    }

    return $max;
}

# Recursive Max
sub getRecursiveMax {
    @_ = sort @_;

    my $max = shift @_;
    my $x = shift @_;

    $max < $x ? $max = $x : $max;

    return $max if scalar ( @_ ) == 0;
    return getRecursiveMax( @_ );
}

print &getIterativeMax(1, 4, 7, 3, 8, 9, 0, 2, 5), "\n";
print &getRecursiveMax(1, 4, 7, 3, 8, 9, 0, 2, 5), "\n";
