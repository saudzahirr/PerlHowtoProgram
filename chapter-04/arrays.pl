# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: June 25, 2024


@array = ("a", "e", "i", "o", "u");
print "@array\n";


print "Using 'while' repetition ...\n";

$i = 0;
while ($i < scalar(@array)) {
    print "array[$i] = $array[$i]\n";
    ++$i;
}

print "\nUsing 'for' repetition ...\n";

for ($i = 0; $i < scalar(@array); ++$i) {
    print "array[$i] = $array[$i]\n";
}

# Slicing in arrays
print "Sliced array: @array[1, 2, 3]\n";

# Arrays Functions

# Operator qw
@os = qw (apple windows linux); # ("apple", "windows", "linux")
print @os, "\n";

# Operator .. (range)
@range = (1..5);
print @range, "\n";

@alphabets = ("a".."z");
print @alphabets, "\n";

# Length of array
print "Length of array: ", scalar(@alphabets), "\n";

# Last Index of array:
print "Last index of array: $#range\n";

# Push extends the array/list
push (@range, (1, 3, 5, 7));
print @range, "\n";

# Pop removes the last element from the list
pop (@range);
print @range, "\n";

# Unshift inserts an element at the front of an array
unshift @range, "a";
print @range, "\n";

# Shift removes and returns first element of an array
$a = shift @range;
print $a, "\n";

# Splice removes/replaces slices of an array
# splice (target_array, offset, length, source_array)
# offset is the index of first element to be modified
# length if the slice to modify
# source_array, (if omitted the selected chunk is removed)
splice @alphabets, 2, 5;
print @alphabets, "\n";

splice @alphabets, 2, 5, @range;
print @alphabets, "\n";


# List Functions
@array = (1, 9, 7, 3, 2);

@reversed = reverse ( @array );
print "@reversed\n";

# Sort lexically
print sort { $a cmp $b } @reversed, "\n";

# Sort numerically
print sort { $a <=> $b } @reversed, "\n";
