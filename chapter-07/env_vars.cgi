#!/usr/bin/perl

# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: July 3, 2024

# Program to display CGI environment variables.

use warnings;
use strict;
use CGI qw( :standard );

print header(), start_html( "Environment Variables" );

print "<table border = '0' cellspacing = '2'>";

foreach my $variable ( sort ( keys %ENV ) ) {
    print Tr( td( b( "$variable:" ) ), td( i( $ENV{$variable} ) ) );
}

print "</table>", end_html(), "\n";
