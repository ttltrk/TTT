use strict;
use warnings;
use LWP::Simple;

sub main {
    print "Downloading... \n";
    getstore("http://www.google.com/", "home.html");
    print "Finished!\n";
}

main();