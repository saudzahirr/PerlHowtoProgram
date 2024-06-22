# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: June 22, 2024


print "***************\n";
print "**   A + B   **\n";
print "***************\n";

# NOTE:
#       STDIN is an abbreviation standard input
#       chomp removes \n character

print "Enter A: ";
$A = <STDIN>;
chomp $A;

print "Enter B: ";
$B = <STDIN>;
chomp $B;

$sum = $A + $B;

print "\n$A + $B = $sum\n";
