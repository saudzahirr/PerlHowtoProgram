# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: June 22, 2024


print "***********************\n";
print "**   Compare A & B   **\n";
print "***********************\n";

print "Enter A: ";
$A = <STDIN>;
chomp ($A);

print "Enter B: ";
$B = <STDIN>;
chomp ($B);

if ($A > $B) {
    print "A > B\n";
}

if ($A < $B) {
    print "A < B\n";
}

if ($A == $B) {
    print "A = B\n";
}
