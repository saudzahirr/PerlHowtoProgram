#!/usr/bin/perl

# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: June 27, 2024

# Problem 5.6

print "*********************************\n";
print "**     Pythagorean Triples     **\n";
print "**       a^2 + b^2 = c^2       **\n";
print "*********************************\n\n";

print "Enter number: ";
chomp ( $N = <STDIN> );

# Brute Force
$i = 0;
foreach $a ( 1..$N ) {
    foreach $b ( 1..$N ) {
        foreach $c ( 1..$N ) {
            $a**2 + $b**2 == $c**2 ? $triples[$i] = "($a, $b, $c)" : next;
            ++$i;
        }
    }
}

foreach ( @triples ) {
    print "$_\n";
}


# Algorithm

# foreach $m ( 1..$N ) {
#     foreach $n ( 1..$N ) {
#         $a = $m**2 - $n**2;
#         $b = 2 * $m * $n;
#         $c = $m**2 + $n**2;

#         $triples[$i] = "($a, $b, $c)";
#     }
# }
