use strict;
use warnings;

$|=1;

sub main {
    my $input = 'C:\Users\AttilaTorok\Desktop\ADM\MM\PL\REGEX\mymanjeeves.txt';
    open(INPUT, $input) or die("Input file $input not found.\n");

    my $output = '>C:\Users\AttilaTorok\Desktop\ADM\MM\PL\FILE\output.txt';
    open(OUTPUT, $output) or die "can't create the output\n";

    while(my $line = <INPUT>) {

        if($line =~ /\begg\b/) {
           $line =~ s/you/YOU/ig;
           print OUTPUT $line;
        }
    }
    close (INPUT);
    close(OUTPUT);
}

main();