#!/usr/bin/perl

# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: June 28, 2024

# Scope Rules: Global, Lexical and Dynamic

our $msg = "Hello, world!\n"; # Global variable

sub display {
    my $name = shift; # Lexical variable
    local $display_msg = $msg . "This is $name\n"; # Dynamic variable
    &test;
    print $display_msg;
}

display "Paul Deitel";

# A global variable, exist throughout the program's execution
# and can be manipulated anywhere in the program.
# Variables defined without any keyword prefix are
# automatically global variables and have global scope.

# A lexically scoped variable is a variable that exists only
# during the block in which it was defined.

# A dynamically scoped variable is one that exists from the
# time it is created until the end of the block in which it
# was created. Such variables are accessible both to the block
# in which they are defined and to any subroutines called from that block.

sub test {
    print $display_msg;
}
