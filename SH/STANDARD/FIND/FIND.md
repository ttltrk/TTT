
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SH](https://github.com/ttltrk/TTT/blob/master/SH/SH.md) - [STANDARD](https://github.com/ttltrk/TTT/blob/master/SH/STANDARD/STANDARD.md)

---

### FIND

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
find . -mtime -1 2>/dev/null | head -n 10 #the files were modified in the last 24h
find . -mtime -90 2>/dev/null | head -n 10 #the files were modified in the last 90 days
```

- exclude mindent, ami nem *.log

```sh
find Scripts -type f ! '(' -name "*.log" ')'
```

- exclude mindent, ami nem *.log se *.csv

```sh
find Scripts -type f ! '(' -name "*.log" -o -name "*.csv" ')'
```

[^^^](#FIND)
