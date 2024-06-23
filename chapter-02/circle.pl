# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: June 23, 2024


# Problem 2.8
#   Write a program that asks the user to input
#   the radius of a circle and prints the circle's
#   diameter, circumference and area. Use the value
#   3.14159 for π. Use the following formulas
#   (r is the radius): diameter = 2r, circumference = 2πr, area = πr².

print "****************\n";
print "**   Circle   **\n";
print "****************\n\n";

print "Enter the radius of circle: ";
$r = <STDIN>;
chomp $r;

# PI
$PI = 3.14159;

# Diameter of Circle
$d = 2 * $r;

# Circumference of Circle
$c = 2 * $PI * $r;

# Area of Circle
$a = $PI * $r**2;

# String repition operator 'x'
$bar = "_" x 40;

print "\n $bar\n";
print "|\n";
print "|  Diameter of Circle: $d\n";
print "|  Circumference of Circle: $c\n";
print "|  Area of Circle: $a\n";
