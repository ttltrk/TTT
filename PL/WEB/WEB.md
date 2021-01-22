
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PL](https://github.com/ttltrk/TTT/blob/master/PL/PL.md)

---

### WEB

---

---

- GET_A_WEBPAGE

```
how to download a socurce code of web page
```

```pl
use strict;
use warnings;
use LWP::Simple;

sub main {
    print "Downloading... \n";
    print get("http://www.google.com/");
    print "Finished!\n";
}

main();

>>>

>>>
```

---

- STORE_A_WEBPAGE

```
how to download a webpage
```

```pl
use strict;
use warnings;
use LWP::Simple;

sub main {
    print "Downloading... \n";
    getstore("http://www.google.com/", "home.html");
    print "Finished!\n";
}

main();
```

---

- STORE_A_PICTURE_FROM_THE_WEB

```
download a simple picture from the web
```

```pl
use strict;
use warnings;
use LWP::Simple;

sub main {
    print "Downloading... \n";
    getstore('https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png', 'logo.png');
    print "Finished!\n";
}

main();
```

---
