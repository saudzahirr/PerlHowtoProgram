# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: June 23, 2024


# Problem 3.12
#   A palindrome is a number or a text phrase
#   that reads the same backwards as forwards.
#   For example, each of the following five-digit
#   integers is a palindrome: 12321, 55555, 45554
#   and 11611. Write a program that reads in a number
#   of arbitrary length and checks if it is a palindrome.
#   [Hint: Use the division and modulus operators to
#   separate the number into its individual digits.
#   Note that when you divide by 10, the remainder from
#   this division will result in the last digit of the
#   original number. For instance, 12345 divided by 10
#   results in a remainder of 5, and 789 divided by 10
#   results in a remainder of 9.]

print "Enter a number: ";
chomp ($number = <STDIN>);

$ln = length($number);
$m = 0;

$reversed_number;

for ($i = 1; $i <= $ln; ++$i) {
    # r = (123 % 100) - 3 = 20
    $r = ($number % 10**$i) - $m;
    # m = 3 + 20 = 23
    $m += $r;
    # r = r/10 = 2
    $r /= 10**($i - 1);
    $reversed_number .= $r;
}

if ($reversed_number eq $number) {
    print "$number is a palindrome.\n";
}
else {
    print "$number is not a palindrome.\n";
}
