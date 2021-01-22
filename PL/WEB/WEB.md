
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PL](https://github.com/ttltrk/TTT/blob/master/PL/PL.md)

---

### WEB

---

---

### GET_A_WEBPAGE

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
