#!/usr/bin/perl

# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: June 27, 2024

# Problem 5.6

print "*********************************\n";
print "**          Factorial          **\n";
print "**   n! = n(n - 1)(n - 2)..1   **\n";
print "*********************************\n\n";

print "Enter number: ";
chomp ( $n = <STDIN> );

$n >= 0 || die "ValueError: Factorial of negative integers not defined!";

$factorial = 1;
foreach ( 1..$n ) {
    $factorial *= $_;
}
print "$n! = $factorial\n";


# Method: II

# $factorial = $n;
# $i = 1;

# FACTORIAL: {
#     $n >= 0 || die "ValueError: Factorial of negative integers not defined!";

#     if ( $n > 0 ) {
#         if ( $i < $n && $i != 0 ) {
#             $factorial *= ($n - $i);
#             ++$i;
#             redo FACTORIAL;
#         }

#         $i == $n || last FACTORIAL;
#     }
#     else {
#         $factorial = 1;
#     }
# }

# print "$n! = $factorial\n"
