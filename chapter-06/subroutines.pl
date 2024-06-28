#!/usr/bin/perl

# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: June 27, 2024

# Subroutines in Perl
# User defined functions are called subroutines.
# @_ is the special array variable for arguments.

sub init {
    print "Initializing ...\n";
}

sub display {
    for ( @_ ) {
        print "$_ ";
    }
    print "\n";
}

sub generateKeys {
    if ( wantarray() ) {
        ( $n ) = @_;
        for ( 1..$n ) {
            $keys[$_] = srand(); # system generated random numbers
        }
        return @keys;
    }
    else {
        return srand();
    }
}

# Perl uses & type identifier to a subroutine name.

# & - Case
&init;

# Function call
$key = generateKeys();
&display($key);

@keys = generateKeys(5);
&display(@keys);

# Bareword Case.
display @key;


# Random Numbers

srand(1); # Same 3 numbers will be generated
for ( 1..3 ) {
    print 1 + int( rand( 6 ) ), " ";
}
print "\n";

srand(); # System random number generator reset.
for ( 1..3 ) {
    print 1 + int( rand( 6 ) ), " ";
}
print "\n";
