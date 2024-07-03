#!/usr/bin/perl

# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: July 2, 2024

# Namespaces, Packages and Modules

use Greetings;

# Primary difference between use and require
# is that use imports modules and packages at
# compile time and require does so at execution
# time.

&greetings;

# use v5.5.0;
# We can use with a version number.
# use Greetings 1.1;

# Perl forces to check the version of module
# is 1.1 or higher before using the module.
# The version information is stored as:

# our $VERSION = 1.1;

# If we want to import only specific
# elements from module, we use:

# use Greetings qw ( &greetings );
