#!/usr/bin/perl

# Create data.
foreach ( 1..16 ) {
    push ( @data, $_ % 3 + $_ % 5 + $_ % 7 );
    push ( @data, $_ % 13 + $_ % 15 ) if $_ % 13 + $_ % 15 != 0;
}

$mean = 0.0;
$std = 0.0;

foreach ( @data ) {
    $mean += $_;
    $std += $_ ** 2;
}

$mean /= scalar @data;
$std /= scalar @data;
$std -= $mean ** 2;
$std = $std ** ( 1/2 );

@data = sort { $x <=> $y } @data;
$n = scalar @data;

if ( $n % 2 != 0 ) {
    # x // y = x/y - (x % y)/y
    $i = $n/2 - ( $n % 2 )/2;
    $median = $data[$i];
}
$j = ( $n - 1 )/2 - ( ( $n - 1 ) % 2 ) / 2;
$median = ( $data[$i] + $data[$j] ) / 2;

$mode = 0;
foreach ( @data ) {
    ++$freq[$_];

    if ( $freq[$_] > $freq[$mode] ) {
        $mode = $_;
    }
}

print "Mode: $mode\n";
print "Median: $median\n";
print "Mean: $mean\n";
print "Standard Deviation: $std\n";

print "Response\tFrequency\n";
print "--------\t---------\n";

foreach ( 1..16 ) {
    print "$_\t\t", "*" x $freq[$_], "\n";
}
