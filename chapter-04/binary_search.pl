# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: June 25, 2024


print "**********************************\n";
print "**   Binary  Search Algorithm   **\n";
print "**********************************\n\n";

print "Enter the search key: ";
chomp ( $searchKey = <STDIN> );

for ( $i; $i < 32; ++$i ) {
    $array[ $i ] = 2 * $i;
}

# Print header
print "\n";
for ( $i = 0; $i < @array; ++$i ) {
    print $i < 10 ? "  $i " : " $i ";
}
print "\n", "-" x ( 4 * @array), "\n";

$found = 0;
$start = 0;
$end = $#array;

while ( $start <= $end && !$found ) {
    # Floor Division
    # x // y = ( x - ( x % y ) ) / y
    $center = ( ( $start + $end ) - ( ( $start + $end ) % 2 ) ) / 2;

    for ( $i = 0; $i < @array; ++$i ) {
        if ( $i < $start || $i > $end ) {
            print "    ";
        }
        elsif ( $i == $center ) {
            print $array[ $i ] < 10 ? "  $array[ $i ]*" : " $array[ $i ]*";
        }
        else {
            print $array[ $i ] < 10 ? "  $array[ $i ] " : " $array[ $i ] ";
        }
    }
    print "\n";

    if ( $searchKey == $array [ $center ] ) {
        $index = $center;
        $found = 1;
    }
    elsif ( $searchKey < $array[ $center ]) {
        $end = $center - 1;
    }
    else {
        $start = $center + 1;
    }

}

if ( $found ) {
    print "\n$searchKey found at index $index\n";
}
else {
    print "\n$searchKey not found!\n";
}
