#!/usr/bin/perl

# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: June 28, 2024

# Namespaces, Packages and Modules

require Display;

$perlVERSION = "5.34.0";

Display::display("Hello, world!");

print "Perl version: $main::perlVERSION\n";
print "Display version: $Display::VERSION\n";


# perl -I ../../PerlHowtoProgram/chapter-06 namespaces.pl
