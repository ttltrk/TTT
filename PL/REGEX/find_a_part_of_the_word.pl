use strict;
use warnings;

$|=1;

sub main {
    my $file = 'C:\Users\AttilaTorok\Desktop\ADM\MM\PL\REGEX\mymanjeeves.txt';
    open(INPUT, $file) or die("Input file $file not found.\n");
    while(my $line = <INPUT>) {
        if($line =~ /h.s/) { #has
        #if($line =~ /egg/) { #*egg*
            print $line;
        }
    }
    close (INPUT);
}

main();