#!/usr/bin/perl

# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: July 2, 2024

package Greetings;

use Exporter;
our @ISA = qw( Exporter );

our @EXPORT = qw ( @array &greetings );

our @array = ( 0..15 );

sub greetings {
    print "Hello, world!\n";
}

return 1; # Indicate successful import of module
