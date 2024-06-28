#!/usr/bin/perl

# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: June 28, 2024

# Game of Chance

print "**********************************\n";
print "**       A Game of Chance       **\n";
print "**                              **\n";
print "**       .-------.    ______    **\n";
print "**      /   o   /|   /\\     \\   **\n";
print "**     /_______/o|  /o \\  o  \\  **\n";
print "**     | o     | | /   o\\_____\\ **\n";
print "**     |   o   |o/ \\o   /o    / **\n";
print "**     |     o |/   \\ o/  o  /  **\n";
print "**     '-------'     \\/____o/   **\n";
print "**                              **\n";
print "**********************************\n\n";


sub rollDice {
    return 1 + int( rand( 6 ) );
}

$n = &rollDice;
print "$n\n";


# print "       .-------.       \n";
# print "      /   o   /|       \n";
# print "     /_______/o|       \n";
# print "     | o     | |       \n";
# print "     |   o   |o/       \n";
# print "     |     o |/        \n";
# print "     '-------'         \n";
