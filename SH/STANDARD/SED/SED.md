
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SH](https://github.com/ttltrk/TTT/blob/master/SH/SH.md) - [STANDARD](https://github.com/ttltrk/TTT/blob/master/SH/STANDARD/STANDARD.md)

---

### SED

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
#delete the first and the last 2line
sed '1d;$d' test_01.log > test_fin_temp.log
sed '$d' test_fin_temp.log > test_fin.log
```

remove a given char/word from a line

```sh
cat num.txt
<ppp>25</ppp>

sed 's|[</ppp>,]||g' num.txt > num1.txt
cat num1.txt
25
```

[^^^](#SED)
