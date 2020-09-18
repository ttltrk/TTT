
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SH](https://github.com/ttltrk/TTT/blob/master/SH/SH.md) - [STANDARD](https://github.com/ttltrk/TTT/blob/master/SH/STANDARD/STANDARD.md)

---

### WC

---

```

```

---

* [BASICS](#BASICS)

---

#### BASICS

```

```

megszamolja a filekot egy konyvtarban

```sh
ls -1 | wc -l
```

megszamolja a fileban a sorokat szavakat karaktereket

```sh
wc file_name.txt

ttltrk-mbp:TEST attilatorok$ wc test3.txt
       5      13      71 test3.txt
ttltrk-mbp:TEST attilatorok$
```

csak a sorokat szamolja meg

```sh
wc -l file_name.txt

ttltrk-mbp:TEST attilatorok$ wc -l test3.txt
       5 test3.txt
ttltrk-mbp:TEST attilatorok$
```

csak a szavakat szamolja meg

```sh
wc -w file_name.txt

ttltrk-mbp:TEST attilatorok$ wc -w test3.txt
      13 test3.txt
ttltrk-mbp:TEST attilatorok$
```

csak a karaktereket szamolja meg

```sh
wc -c file_name.txt

ttltrk-mbp:TEST attilatorok$ wc -c test3.txt
      71 test3.txt
ttltrk-mbp:TEST attilatorok$
```

```sh

```

[^^^](#WC)
