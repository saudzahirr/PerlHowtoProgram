#!/usr/bin/perl

# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: June 27, 2024

@array = (1..32);

# foreach controlVariable ( list ) {
#       statements;
# }

foreach $number ( @array ) {
    print "$number\n";
}

foreach ( $i = 1; $i < 17; ++$i ) {
    print "$i: ", "*" x $i, "\n";
}

# Special Variable $_
# In Perl $_ is default argument for perl functions and
# default control variable for many control structures.
# With no controlVariable in 'foreach' repetition structure,
# $_ is defualt.

foreach (1..16) {
    print "$_\n";
}

foreach $_ ("a".."z") {
    print "$_\n";
}

# Loop Control Shortcuts: grep and map

# newList = grep ( conditionalExpression, list );
# foreach ( list ) {
#   push ( newList, $_ ) if conditionalExpression;
# }
#

foreach ( @array ) {
    push ( @even, $_ ) if $_ % 2 == 0;
}
print "@even\n";

foreach ( @array ) {
    push ( @odd, $_ ) if $_ % 2 != 0;
}
print "@odd\n";

@array_ = grep ( $_ % 3 == 1, @array );
print "@array_\n";


# newList = map ( function, list );
# foreach ( list ) {
#   push ( newList, function applied to $_ );
# }
#

foreach ( @array ) {
    push ( @squares, $_ ** 2 );
}
print "@squares\n";

@cubes = map ( $_ ** 3, @array );
print "@cubes\n";


%urls = (
    "google" => "www.google.com",
    "facebook" => "facebook.org",
    "nasa" => "nasa.org",
);

%page_rank = (
    3 => "nasa.org",
    1 => "www.google.com",
    2 => "facebook.org",
);

print "Sorted Lexically\n";
foreach ( sort { $a cmp $b } keys %urls ) {
    print "$_: $urls{$_}\n";
}

print "\nSorted Numerically\n";
foreach ( sort { $a cmp $b } keys %page_rank ) {
    print "$_: $page_rank{$_}\n";
}

# Loop Controls: next, last, redo

foreach ( 1..10 ) {
    if ( $_ % 2 == 0 ) {
        next; # skips
    }

    if ( $_ == 5 ) {
        $number = $_;
        last; # breaks
    }

    print "$_ ";
}
print "\n";

print "Terminated at index $number.\n";

$number = 1;
until ( $number > 5 ) {
    unless ( $number > 10 ) {
        print "$number ";
        ++$number;
        redo; # continue without checking  $number > 5
    }
}
print "\n";

# Block Labels.
# Any loop except do/while and do/until structure
# can have a label.

LOOP: for ( $i = 1; $i <= 10; ++$i ) {
    next LOOP if ( $i % 2 == 0 );
    print "$i ";
}
print "\n";

OUTER: foreach $row ( 1..10 ) {
    INNER: foreach $col ( 1..10 ) {
        if ( $row < $col ) {
            print "\n";
            next OUTER;
        }

        print "$col    ";
    }
}
print "\n";

# Bare Blocks
# a block enclosed by curly braces
# with zero or more lines of code.

print "Guess number between 1 & 3: ";
chomp ( $guess = <STDIN> );
BLOCK: {
    if ( $guess == 1 ) {
        print "Right!\n";
        last BLOCK;
    }

    if ( $guess == 2 ) {
        print "Close!\n";
        last BLOCK;
    }

    if ( $guess == 3 ) {
        print "Wrong!\n";
        last BLOCK;
    }

    # Default
    {
        print "Please re-enter guess (1-3): ";
        chomp ( $guess = <STDIN> );
        redo BLOCK;
    }
}

# Logical Operators

print "Enter number: ";
chomp ( $number = <STDIN> );

if ( $number > 3 && $number < 10) {
    print "Number is between 3 and 10: $number\n";
}
unless ( $number > 3 and $number < 10) {
    print "Number is not between 3 and 10: $number\n";
}

if ( $number > 3 || $number < 10) {
    print "Number is between 3 or 10: $number\n";
}
unless ( $number > 3 or $number < 10) {
    print "Number is not between 3 or 10: $number\n";
}

if ( ! $number > 3 ) {
    print "Number is less than 3: $number\n";
}

if ( not $number < 3 ) {
    print "Number is greater than 3: $number\n";
}

print "Enter numerator: ";
chomp ( $num = <STDIN> );

DIV: {
    print "Enter denominator: ";
    chomp ( $denom = <STDIN> );

    $denom != 0 or
    print "ZeroDivisionError: Cannot divide by zero!\n" and redo DIV;
}

print "\n$num/$denom = ", $num/$denom, "\n";

# Error Functions: die and warn

print "Enter numerator: ";
chomp ( $num = <STDIN> );

print "Enter denominator: ";
chomp ( $denom = <STDIN> );

$denom != 0 || die "ZeroDivisionError: Cannot divide by zero!";

print "\n$num/$denom = ", $num/$denom, "\n";

# Perl stores error message in special variable $!
# warn is same as die, and is used for non fatal errors.
