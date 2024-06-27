# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: June 25, 2024


print "Enter search key: ";
chomp ( $searchKey = <STDIN> );

@data = (1, 2, 3, 4, 5, 6, 7);
$found = 0;

for ($i = 0; $i < scalar(@data) && !$found; ++$i) {
    if ($data[$i] == $searchKey) {
        $found = 1;
        print "Search key '$searchKey' found at index '$i'\n";
    }
}

if (!$found) {
    print "Search key '$searchKey' not find!\n";
    exit;
}
