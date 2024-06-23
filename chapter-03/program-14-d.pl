# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: June 23, 2024


# Problem 3.14 (d)
#   Write a program to calculate the value of it from the following
#   infinite series (once again, print after each term is added, stopping
#   after a specified number of terms) and prints the current value after
#   each iteration: π = 4 - 4/3 + 4/5 - 4/7 + 4/9 - 4/11 + ...

print "****************************\n";
print "**   Pi Infinite Series   **\n";
print "****************************\n\n";

print "Enter number of terms: ";
chomp ($n = <STDIN>);

$i = 1;
$s = 1;
$pi = 0;

until ($i > $n) {
    if ($i % 2 != 0) {
        $pi += 4 / ($s * $i);
        $s *= -1;
    }
    ++$i;
}

print "The value of pi approximated by the first $n terms of the infinite series is: $pi\n";
