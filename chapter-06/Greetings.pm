#!/usr/bin/perl

# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: July 2, 2024

package Greetings;

use Exporter;

# @ISA is a special built-in array contains Exporter
our @ISA = qw ( Exporter );

# @EXPORT is a special built-in array to add elements
# which we want to export.
our @EXPORT = qw ( @array &greetings );

our @array = ( 0..15 );

sub greetings {
    print "Hello, world!\n";
}

return 1; # Indicate successful import of module
