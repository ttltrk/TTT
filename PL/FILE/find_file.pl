use strict;
use warnings;

sub main {

    my $file = 'C:\Users\AttilaTorok\Desktop\ADM\MM\PL\WEB\logo.png';

    if (-f $file) {
        print "Found file: $file\n";
    }
    else {
        print "File not found: $file\n";
    }
}

main();
