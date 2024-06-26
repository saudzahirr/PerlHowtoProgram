# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: June 23, 2024


# Problem 2.9
#   Write a program that asks the user to input
#   one number consisting of five digits, separates
#   the number into its individual digits and prints
#   the fifth digit five times, the fourth digit four
#   times, the third digit three times and so forth.

print "Enter a five digit integer: ";
$number = <STDIN>;
chomp $number;

if (length($number) ne 5) {
    print "RuntimeError: Integer '$number' does not have five digits!\n";
    exit;
}

($d1, $d2, $d3, $d4, $d5) = split("", $number);

print $d5 x 5;
print $d4 x 4;
print $d3 x 3;
print $d2 x 2;
print "$d1\n";
