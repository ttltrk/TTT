use strict;
use warnings;

sub main {
    if (-f '/home/TTLTRK/perl/hw.pl') {
        print "Found file\n";
    }
    else {
        print "File not found\n";
    }
}

main();