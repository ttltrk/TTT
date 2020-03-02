
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SH](https://github.com/ttltrk/TTT/blob/master/SH/SH.md) - [STANDARD](https://github.com/ttltrk/TTT/blob/master/SH/STANDARD/STANDARD.md)

---

### CAT

---

```
It reads data from the file and gives their content as output. It helps us to create, view, concatenate files.
```

---

* [READ_THE_CONTENT](#READ_THE_CONTENT)
* [READ_THE_CONTENT_WITH_LINENUMS](#READ_THE_CONTENT_WITH_LINENUMS)
* [READ_THE_CONTENT_FROM_3RD_LINE](#READ_THE_CONTENT_FROM_3RD_LINE)
* [CONCATENATE_TWO_FILES_INTO_THE_3RD](#CONCATENATE_TWO_FILES_INTO_THE_3RD)

---

#### READ_THE_CONTENT

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

[^^^](#CAT)

---

#### READ_THE_CONTENT_WITH_LINENUMS

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

[^^^](#CAT)

---

#### READ_THE_CONTENT_FROM_3RD_LINE

```sh
cat -n file_name.txt | more +3
```

```sh
ttltrk-mbp:TEST attilatorok$ cat -n test3.txt | more +3
     3  harmadik sor
     4  negyedik sor es
     5  az utolso otodik sor
```

[^^^](#CAT)

---

#### CONCATENATE_TWO_FILES_INTO_THE_3RD

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

[^^^](#CAT)

---
