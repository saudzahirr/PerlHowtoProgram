# Author: Saud Zahir
# Contact: m.saud.zahir@gmail.com
# Date: June 22, 2024


%COLOR = ( RED => "#FF0000",
           GREEN => "#008000",
           BLUE => "#0000FF"
        );

print "Red color has hex code: $COLOR{'RED'}\n";
print "Green color has hex code: $COLOR{'GREEN'}\n";
print "Blue color has hex code: $COLOR{'BLUE'}\n";


%SCREEN = ( WIDTH => 1920,
            HEIGHT => 1080 
        );

print "Screen width is $SCREEN{'WIDTH'}\n";
print "Screen height is $SCREEN{'HEIGHT'}\n";

$SCREEN{"WIDTH"} = 300;
$SCREEN{"HEIGHT"} = 150;

print "Updated screen width is $SCREEN{'WIDTH'}\n";
print "Updated screen height is $SCREEN{'HEIGHT'}\n";

@color_names = keys( %COLOR );
print "Color names found are: @color_names\n";

@size = values ( %SCREEN );
print "Aspect ratio: ", $size[0]/$size[1], "\n";

while ( ( $color_name, $hex_code ) = each( %COLOR ) ) {
    print "$color_name has hex code: $hex_code\n";
}

print reverse ( %SCREEN ), "\n";

while ( $color_name = pop ( @color_names ) ) {
    print "$color_name\n";
}

delete $COLOR{"RED"};
while ( ( $color_name, $hex_code ) = each( %COLOR ) ) {
    print "$color_name has hex code: $hex_code\n";
}

if ( !exists ( $COLOR{"RED"} ) ) {
    print "Red color does not exist in colors!\n";
}

$COLOR{"RED"};
if ( !defined ( $COLOR{"RED"} ) ) {
    print "Red color hex code is not defined!\n";
}
