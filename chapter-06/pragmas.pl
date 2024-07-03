#!/usr/bin/perl

# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: July 3, 2024

# Pragmas

# Perl pragmas are statements that the
# compiler uses to set compiler options
# There are two important perl pragmas.
# use strict and use warnings


# Pragme: strict

# The statement use strict foreces programmer
# to declare all the variables as package variables
# or lexically scoped variables. It also forces to use
# quotes quotes around all strings and call each subroutine
# explicitly.

use strict "vars";

# Global variable
our $X = 2;
print "$main::X\n";

# Lexical variable
my $x = 2;
print "$x\n";


# This will check all the package variables to ensure that
# each is fully qualified with its package name, followed by
# :: (namespace or package resolution) and then variable name.
# $main::variable.


# There are four ways in which a variable can satisfy use strict. First,
# variables defined with the my keyword are lexically scoped and can be
# referenced with their short name throughout the block in which they are
# defined. Second, package variables defined with the our keyword are
# placed in the symbol table. Such variables can be accessed with their
# short names throughout the package in which they are defined. Outside
# that package, package variables must be accessed with their fully qualified
# names. Third, variables can be used with their fully qualified names in
# all instances, including the package in which they are defined. Finally,
# a program can specify a use vars statement followed by a list containing
# the names of variables to use as in
# use vars qw(variablel variable2 variable3);
# For each name, a package global variable is created that can be accessed
# with its short name throughout the current package.

use vars qw( $X );

print "$X\n";


# use strict "subs";
# Perl refuses to allow the programmer
# call a subroutine with bareword.

use strict "subs";
require Greetings;

Greetings::greetings();

# perl -I ../../PerlHowtoProgram/chapter-06 pragmas.pl


# Pragmas: warnings

# Warning pragma warns the user of possible typos, the
# uninitialized variables and other potential problems
# in the code. None of these are fatal errors, but warning
# message will be displayed on console.

use warnings;

print ( 3 + 5 ) * 5;
print "\n";

# The above code will display following warning:

# print (...) interpreted as function at pragmas.pl line 81.
# Useless use of multiplication (*) in void context at pragmas.pl line 81


# The programmer can also use no command to turn off all the warnings ans strict.

no strict;
# inside the block of code where the pragmas should be disabled.


# Use constant perl statement;

use constant PI => 3.141592654;

print PI, "\n";


use diagnostics; # This will provide more detailed error messages.

# use warnings does not provide enough information for you to debug
# your program. Diagnostics can be toggled at run time with the enable()
# and disable() commands. The last pragma is use integer. This tells your
# compiler to perform all arithmetic operations as integer operations.
# This can be used if you have a long block of code that uses only integers
# and you do not wish to preface each operation with the int keyword.
