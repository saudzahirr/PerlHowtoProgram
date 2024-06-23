# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: June 23, 2024


# Problem 2.12
#   One interesting application of computers is
#   drawing graphs and bar charts (sometimes called
#   "histograms"). Write a program that reads five
#   numbers (each between 1 and 30) from user input.
#   For each number read, your program should print
#   a line containing that number of adjacent asterisks.
#   For example, if your program reads the number 7,
#   it should print *******.

print "*******************\n";
print "**   Histogram   **\n";
print "*******************\n\n";

print "Enter five numbers between 1 and 30.\n";

for ($i = 0; $i < 5; $i++) {
    print "Enter number: ";
    $x = <STDIN>;
    chomp $x;

    if ($x < 1) {
        print "RuntimeError: $x is less than 1";
        exit;
    }

    if ($x > 30) {
        print "RuntimeError: $x is greater than 30";
        exit;
    }

    # String concatenation with '.'
    print "*" x $x . "\n";
}
