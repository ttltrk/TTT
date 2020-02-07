use strict;
use warnings;
use LWP::Simple;

sub main {
    print "Downloading... \n";
    my $code = getstore('https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png', 'logo.png');
    if($code == 200) {
        print "Success\n";
    }
    else {
        print "Failed\n";
    }
    print "Finished!\n";
}

main();