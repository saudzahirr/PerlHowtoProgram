#!/usr/bin/perl

# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: July 3, 2024


# Problem 6.5

use constant PI => 3.14159;

sub getCircleParams {
    ( $R ) = @_;
    if ( wantarray() ) {
        return ( PI * $R**2, 2 * $R, 2 * PI * $R );
    }
    else {
        return PI * $R**2;
    }
}

$area = getCircleParams 2;
print "Area of circle: $area\n\n";

( $area, $diameter, $circumference ) = getCircleParams 2;
print "Area of circle: $area\n";
print "Diameter of circle: $diameter\n";
print "Circumference of circle: $circumference\n";
