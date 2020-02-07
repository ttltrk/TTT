use strict;
use warnings;

$|=1;

sub main {
    my $input = 'C:\Users\AttilaTorok\Desktop\ADM\MM\PL\REGEX\mymanjeeves.txt';
    open(INPUT, $input) or die("Input file $input not found.\n");

    my $output = '>C:\Users\AttilaTorok\Desktop\ADM\MM\PL\FILE\output.txt';
    open(OUTPUT, $output) or die "can't create the output\n";

    while(my $line = <INPUT>) {

        $line =~ s/you/YOU;

        if($line =~ /\begg\b/) { #egg
            print OUTPUT $line;
        }
    }
    close (INPUT);
    close(OUTPUT);
}

main();