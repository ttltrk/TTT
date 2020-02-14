
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SH](https://github.com/ttltrk/TTT/blob/master/SH/SH.md) - [STANDARD](https://github.com/ttltrk/TTT/blob/master/SH/STANDARD/STANDARD.md)

---

<h3 id='^'>CAT</h3>

---

* <a href='#basics'>Basics</a></br>

---

<h3 id='basics'>Basics</h3>

kiirja a file tartalmat

```sh
cat file_name.txt
```

```sh
ttltrk-mbp:TEST attilatorok$ cat test3.txt
elso sor
masodik sor
harmadik sor
negyedik sor es
az utolso otodik sor
```

szamozva kiirja a file tartalmat

```sh
cat -n file_name.txt
```

```sh
ttltrk-mbp:TEST attilatorok$ cat -n test3.txt
     1	elso sor
     2	masodik sor
     3	harmadik sor
     4	negyedik sor es
     5	az utolso otodik sor
ttltrk-mbp:TEST attilatorok$
```

szamozva kiirja a file tartalmat a 3.ik sortol

```sh
cat -n file_name.txt | more +3
```

```sh
ttltrk-mbp:TEST attilatorok$ cat -n test3.txt | more +3
     3  harmadik sor
     4  negyedik sor es
     5  az utolso otodik sor
```

fileok tartalmat (1-2) osszefuzi (a 3.ik-ba)

```sh
cat file_name_1.txt file_name_2.txt > file_name_3.txt
```

```sh
ttltrk-mbp:TEST attilatorok$ cat t1.txt
t1 - elso sora
ttltrk-mbp:TEST attilatorok$ cat t2.txt
t2 - elso sora
t2 - masodik sora
ttltrk-mbp:TEST attilatorok$ cat t3.txt
:
ttltrk-mbp:TEST attilatorok$ cat t1.txt t2.txt > t3.txt
ttltrk-mbp:TEST attilatorok$ cat t3.txt
t1 - elso sora
t2 - elso sora
t2 - masodik sora
ttltrk-mbp:TEST attilatorok$
```

---
