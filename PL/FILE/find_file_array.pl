use strict;
use warnings;

sub main {

    #array
    my @files = (
        'C:\Users\AttilaTorok\Desktop\ADM\MM\PL\WEB\logo.png',
        'C:\Users\AttilaTorok\Desktop\ADM\MM\PL\WEB\home.html',
        'C:\Users\AttilaTorok\Desktop\ADM\MM\PL\WEB\home.txt',
    );

    foreach my $file(@files) { #how to iterate ower the array
        if ( -f $file ) {
            print "Found file: $file\n";
        }
        else {
            print "File not found: $file\n";
        }
    }
}

main();