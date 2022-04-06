
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SH](https://github.com/ttltrk/TTT/blob/master/SH/SH.md) - [STANDARD](https://github.com/ttltrk/TTT/blob/master/SH/STANDARD/STANDARD.md)

---

### RM

---

```

```

---

* [BASICS](#BASICS)

---

#### BASICS

```

```

- remove file

```sh
rm filename
```

- remove directories

```sh
rm -r dirname
rmdir dirname (empty) # will remove only the empty dirs 
```

- remove many records

```sh
--dry run (remove all *.dump.bin)
for f in *.dump.bin; do echo rm "$f"; done

--execute
for f in *.dump.bin; do rm "$f"; done
```

[^^^](#RM)
