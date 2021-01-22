
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PL](https://github.com/ttltrk/TTT/blob/master/PL/PL.md)

---

### FILE

---

* [FIND_FILE](#FIND_FILE)

---

#### FIND_FILE

```
check if the file is in the correct place
```

```pl
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

>>>
Found file: C:\Users\AttilaTorok\Desktop\ADM\MM\PL\WEB\logo.png
>>>
```

[^^^](#WEB)

---
