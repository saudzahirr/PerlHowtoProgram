# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: June 23, 2024


# Problem 3.11
#   Write a program that receives as input a series of numbers.
#   At the end of the input list, the program should output the
#   total number of numbers input, the largest number, the smallest
#   number, and the average of all the numbers.

print "Enter series of numbers (q to quit)\n";

$x = 0;

$min;
$max;
$avg = 0;
$count = 0;

while ($x ne "q") {
    print "Enter number: ";
    chomp ($x = <STDIN>);

    if ($x eq "q") {
        goto display;
    }

    $avg += $x;
    ++$count;

    if ($min == undef) {
        $min = $x;
    }
    if ($x < $min) {
        $min = $x;
    }

    if ($max == undef) {
        $max = $x;
    }
    if ($x > $max) {
        $max = $x;
    }
}

display:
    if ($count) {
        $avg /= $count;
    }

    print "\nNumber of inputs: $count\n";
    $min ? print "Smallest number: $min\n" : print "Smallest number: -\n";
    $max ? print "Largest number: $max\n" : print "Largest number: -\n";
    $avg ? print "Average: $avg\n" : print "Average: -\n";
