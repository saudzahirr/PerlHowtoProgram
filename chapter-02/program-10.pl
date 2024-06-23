# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: June 23, 2024


# Problem 2.10
#   Write a program that reads in two integers
#   and determins if either is multiple of the other.

print "Enter A: ";
$A = <STDIN>;
chomp ($A);

print "Enter B: ";
$B = <STDIN>;
chomp ($B);

if ($A % $B == 0) {
    print "$A is a multiple of $B\n";
}

if ($B % $A == 0) {
    print "$B is a multiple of $A\n";
}

if ($A % $B != 0 && $B % $A != 0) {
    print "Neither $A is a multiple of $B nor $B is a multiple of $A\n";
}
