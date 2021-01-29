
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PL](https://github.com/ttltrk/TTT/blob/master/PL/PL.md)

---

### REGEX

---

* [OPEN_A_FILE](#OPEN_A_FILE)
* [FIND_A_WORD](#FIND_A_WORD)
* [](#)

---

#### OPEN_A_FILE

```

```

```pl
use strict;
use warnings;

$|=1;

sub main {
    my $file = 'C:\Users\AttilaTorok\Desktop\ADM\MM\PL\REGEX\mymanjeeves.txt';
    open(INPUT, $file) or die("Input file $file not found.\n");
    while(my $line = <INPUT>) {
        print "$line\n"
    }
    close (INPUT);
}

main();
```

[^^^](#REGEX)

---

#### FIND_A_WORD

```

```

```pl
use strict;
use warnings;

$|=1;

sub main {
    my $file = 'C:\Users\AttilaTorok\Desktop\ADM\MM\PL\REGEX\mymanjeeves.txt';
    open(INPUT, $file) or die("Input file $file not found.\n");
    while(my $line = <INPUT>) {
        if($line =~ / egg /) { #egg
        #if($line =~ /egg/) { #*egg*
            print $line;
        }
    }
    close (INPUT);
}

main();

>>>
portrait, and the sitter is that human poached egg that has butted in
engulfed an egg or two and a beaker of coffee.
"Won't you have an egg or something? Or a sausage or something? Or
I champed my egg for a bit. I was most awfully moved, don't you know,
hen--call it one hen for the sake of argument. It lays an egg every
you once get a bit of capital. You buy a hen, and it lays an egg every
>>>
```

[^^^](#REGEX)

---
