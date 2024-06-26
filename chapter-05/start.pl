#!/usr/bin/perl

@array = (1..32);

# foreach controlVariable ( list ) {
#       statements;
# }

foreach $number ( @array ) {
    print "$number\n";
}

foreach ( $i = 1; $i < 17; ++$i ) {
    print "$i: ", "*" x $i, "\n";
}

# Special Variable $_
# In Perl $_ is default argument for perl functions and
# default control variable for many control structures.
# With no controlVariable in 'foreach' repetition structure,
# $_ is defualt.

foreach (1..16) {
    print "$_\n";
}

foreach $_ ("a".."z") {
    print "$_\n";
}

# Loop Control Shortcuts: grep and map

# newList = grep ( conditionalExpression, list );
# foreach ( list ) {
#   push ( newList, $_ ) if conditionalExpression;
# }
#

foreach ( @array ) {
    push ( @even, $_ ) if $_ % 2 == 0;
}
print "@even\n";

foreach ( @array ) {
    push ( @odd, $_ ) if $_ % 2 != 0;
}
print "@odd\n";

@array_ = grep ( $_ % 3 == 1, @array );
print "@array_\n";


# newList = map ( function, list );
# foreach ( list ) {
#   push ( newList, function applied to $_ );
# }
#

foreach ( @array ) {
    push ( @squares, $_ ** 2 );
}
print "@squares\n";

@cubes = map ( $_ ** 3, @array );
print "@cubes\n";


%urls = (
    "google" => "www.google.com",
    "facebook" => "facebook.org",
    "nasa" => "nasa.org",
);

%page_rank = (
    3 => "nasa.org",
    1 => "www.google.com",
    2 => "facebook.org",
);

print "Sorted Lexically\n";
foreach ( sort { $a cmp $b } keys %urls ) {
    print "$_: $urls{$_}\n";
}

print "\nSorted Numerically\n";
foreach ( sort { $a cmp $b } keys %page_rank ) {
    print "$_: $page_rank{$_}\n";
}

# Loop Controls: next, last, redo

foreach ( 1..10 ) {
    if ( $_ % 2 == 0 ) {
        next; # skips
    }

    if ( $_ == 5 ) {
        $number = $_;
        last; # breaks
    }

    print "$_ ";
}
print "\n";

print "Terminated at index $number.\n";

$number = 1;
until ( $number > 5 ) {
    unless ( $number > 10 ) {
        print "$number ";
        ++$number;
        redo; # continue without checking  $number > 5
    }
}
print "\n";

# Block Labels.
# Any loop except do/while and do/until structure
# can have a label.

LOOP: for ( $i = 1; $i <= 10; ++$i ) {
    next LOOP if ( $i % 2 == 0 );
    print "$i ";
}
print "\n";

OUTER: foreach $row ( 1..10 ) {
    INNER: foreach $col ( 1..10 ) {
        if ( $row < $col ) {
            print "\n";
            next OUTER;
        }

        print "$col    ";
    }
}
print "\n";
