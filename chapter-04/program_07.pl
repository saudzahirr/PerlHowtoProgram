# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: June 22, 2024


# Problem 4.7
#   Create a deck of cards using an array
#   (the numbers 1 to 52 will suffice).
#   Now shuffle that deck once such that after
#   the shuffle, the deck contains the values
#   in the order 1, 27, 2, 28, 3, 29, etc.

@deck = (1..52);

for ( $i = 0; $i <= 52; $i += 2 ) {
    $k = $i / 2;
    $shuffled_deck[ $i ] = $deck[ $k ];
    $shuffled_deck[ $i + 1 ] = $deck[ $k + 26 ];
}

print "@shuffled_deck\n";
