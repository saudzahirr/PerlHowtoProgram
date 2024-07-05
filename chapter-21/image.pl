#!/usr/bin/perl

# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: July 3, 2024

use strict;
use warnings;
use GD;

my $image = new GD::Image( 320, 320 );

my $white = $image->colorAllocate( 255, 255, 255 );
my $green = $image->colorAllocate( 96, 181, 21 );
my $skyblue = $image->colorAllocate( 34, 166, 241 );
my $blue = $image->colorAllocate( 0, 116, 182 );
my $red = $image->colorAllocate( 223, 55, 43 );
my $yellow = $image->colorAllocate( 251, 193, 22 );
my $lightblue = $image->colorAllocate( 26, 115, 232 );
my $darkgreen = $image->colorAllocate( 37, 151, 69 );

my $lightgreen = $image->colorAllocate( 120, 188, 36 );

$image->filledRectangle( 15, 15, 300, 300, $blue );

open( PCIT, ">image.png" ) or die( "Can not open picture: $!" );

binmode( PCIT );
print( PCIT $image->png() );
close( PCIT ) or die( "Can not close picture: $!" );
