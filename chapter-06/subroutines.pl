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
            $keys[$_] = rand();
        }
        return @keys;
    }
    else {
        return rand();
    }
}

# Perl uses & type identifier to a subroutine name.

# & - Case
&init;

$key = generateKeys();
&display($key);

@keys = generateKeys(5);
&display(@keys);

# Bareword Case.
display @key;
