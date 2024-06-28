#!/usr/bin/perl

# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: June 28, 2024

# Fibonacci Sequence

sub fibonacciSequence {
    my $n = shift;
    if ( $n == 0 || $n == 1 ) { # Base Case
        return $n;
    }
    else {
        return fibonacciSequence( $n - 1 ) +
               fibonacciSequence( $n - 2 );
    }
}

foreach ( 0..32 ) {
    print fibonacciSequence( $_ ), "\t";
}
print "\n";

# Iteration uses repetition structure &
# recursion uses selection structure.
# Recursion achieves repetition through
# repeated subroutine calls.
# Iteration and recursion both involve a
# termination test, iteration terminates
# when the loop-continuation condition fails;
# recursion terminates when a base case is recognized.

# Recursion has many negatives. It repeatedly invokes the mechanism,
# and consequently the overhead, of subroutine calls.
# This can be expensive in both processor time and memory space.
# Each recursive call causes another call of the subroutine;
# this can consume considerable memory. Iteration normally occurs
# within a single subroutine, so the overhead of repeated
# subroutine calls and extra memory assignment is avoided.
