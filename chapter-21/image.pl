#!/usr/bin/perl

# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: July 5, 2024

use strict;
use warnings;
use GD;

# Create a  new GD image object
# 320 pixels wide and 320 pixels high
my $image = new GD::Image( 320, 320 );

my $white = $image->colorAllocate( 255, 255, 255 );
my $red = $image->colorAllocate( 255, 0, 0 );
my $green = $image->colorAllocate( 0, 255, 0 );
my $blue = $image->colorAllocate( 0, 0, 255 );
my $black = $image->colorAllocate( 0,0,0 );

my $purple = $image->colorAllocate( 255, 0, 255 );

$image->filledRectangle ( 15, 15, 150, 150, $red );
$image->arc( 200, 200, 50, 50, 0, 360, $black );
$image->fill( 200, 200, $blue );
$image->rectangle ( 100, 100, 200, 125, $green );
$image->fillToBorder( 150, 110, $green, $green );

my $polygon = new GD::Polygon();
$polygon->addPt (20, 300 );

$polygon->addPt( 20, 175 );
$polygon->addPt( 100, 175 );

$image->polygon( $polygon, $blue );
$image->fill ( 50, 200, $purple );

$polygon->setPt( 0, 30, 300 );
$polygon->setPt( 1, 110, 300 );
$polygon->setPt( 2, 110, 175);

$image->filledPolygon( $polygon, $black );

open ( PICT, ">image.png" ) or
    die( "Can not open picture: $!" );

binmode ( PICT );
print ( PICT $image->png() );
close ( PICT ) or die( "Can not close file: $!" );
