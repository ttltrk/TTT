
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SH](https://github.com/ttltrk/TTT/blob/master/SH/SH.md) - [STANDARD](https://github.com/ttltrk/TTT/blob/master/SH/STANDARD/STANDARD.md)

---

### NAWK

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
#remove the characters until the given char
nawk -F"] " '{print $NF}' test.log > test_01.log
```

```sh
#append word "Contract=" as the first character
awk '{print "Contract="$0}' Contract.log > Contract_01.log
```

[^^^](#NAWK)
