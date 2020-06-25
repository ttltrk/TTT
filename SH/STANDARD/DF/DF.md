
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SH](https://github.com/ttltrk/TTT/blob/master/SH/SH.md) - [STANDARD](https://github.com/ttltrk/TTT/blob/master/SH/STANDARD/STANDARD.md)

---

### DF

---

```
free disk space check
```

---

* [BASICS](#BASICS)

---

#### BASICS

```
free disk space check
```

```sh
df -ahP
```

only display df lines that have more fs usage than 70%

```sh
df -P | awk '0+$5 >= 70 {print}'
```

```sh

```

[^^^](#DF)
