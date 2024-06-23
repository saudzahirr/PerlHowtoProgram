# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: June 23, 2024


# Problem 2.7
#   Write a program that asks the user to enter
#   two numbers and prints the sum, product,
#   difference and quotient of the two numbers.

print "********************\n";
print "**   Calculator   **\n";
print "********************\n\n";

print "Enter A: ";
$A = <STDIN>;
chomp $A;

print "Enter B: ";
$B = <STDIN>;
chomp $B;

$sum = $A + $B;
$diff = $A - $B;
$prod = $A * $B;
$quo = $A %  $B;

print "A + B = $sum\n";
print "A - B = $diff\n";
print "A * B = $prod\n";
print "A % B = $quo\n";
