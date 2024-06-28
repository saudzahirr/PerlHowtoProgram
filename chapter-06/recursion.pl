#!/usr/bin/perl

# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: June 28, 2024

# Recursion

sub factorial {
    my $n = shift; # get the argument 
                   # (shift is used to get the first value from @_)
    if ( $n <= 1 ) {
        return 1;
    }
    else {
        return $n * factorial( $n - 1 );
    }
}

print factorial(3), "\n";

# Keyword 'my' is used to create a
# 'lexically scoped variable'.
# Such variables only exists during
# block in which it was defined. Every time
# the block is entered during the execution,
# the lexically scoped variable is created.
# Every time the block terminates, variable
# is destroyed.
