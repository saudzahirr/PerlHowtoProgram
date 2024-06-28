#!/usr/bin/perl

# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: June 28, 2024

package Display;

our $VERSION = "1.0.0";

sub display {
    for ( @_ ) {
        print "$_ ";
    }
    print "\n";
}

1;
