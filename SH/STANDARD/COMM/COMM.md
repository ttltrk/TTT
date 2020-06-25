
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SH](https://github.com/ttltrk/TTT/blob/master/SH/SH.md) - [STANDARD](https://github.com/ttltrk/TTT/blob/master/SH/STANDARD/STANDARD.md)

---

### COMM

---

```

```

---

* [BASICS](#BASICS)

---

#### BASICS

```

```

```sh
$ cat temp.txt
this is some other text
this is appended text
$
$ cat temp2.txt
temp2 temp2
this is some other text
this is appended text
$
$ comm -1 temp.txt temp2.txt
temp2 temp2
        this is some other text
        this is appended text
$ comm -2 temp.txt temp2.txt
        this is some other text
        this is appended text
$ comm -12 temp.txt temp2.txt
this is some other text
this is appended text
$
```

[^^^](#COMM)

---
