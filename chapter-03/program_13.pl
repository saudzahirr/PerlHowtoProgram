# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: June 23, 2024


# Problem 3.13
#   Receive as input an integer containing only Os and 1s
#   (i.e., a "binary" integer), and print its decimal equivalent.
#   [Hint: Use the modulus and division operators to pick off the
#   "binary" number's digits one at a time from right to left.
#   Just as in the decimal-number system, where the rightmost digit
#   has a positional value of 1, the next digit to the left has
#   a positional value of 10, then 100, then 1000, etc., in the
#   binary-number system, the rightmost digit has a positional value
#   of 1, the next digit to the left has a positional value of 2,
#   then 4, then 8, etc. Thus the decimal number 234 can be interpreted
#   as 4*1 + 3*10 + 2*100. The decimal equivalent of binary 1101 is
#   1*1 + 0*2 + 1*4 + 1*8 or 1 + 0 + 4 + 8, or 13.]

print "**************************************\n";
print "**   Binary  to Decimal Converter   **\n";
print "**************************************\n\n";

print "Enter a binary digits: ";
chomp ($bin = <STDIN>);

$ln = length($bin);
$m = 0;

$number = 0;

for ($i = 1; $i <= $ln; ++$i) {
    $r = ($bin % 10**$i) - $m;
    $m += $r;
    $r /= 10**($i - 1);
    $number += $r * 2**($i - 1);
}

print "\nBinary: $bin ----> Decimal: $number\n";
