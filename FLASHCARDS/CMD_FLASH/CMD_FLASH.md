
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md)

---

### CMD_FLASH

---

* [ALIAS](#ALIAS)
* [CAT](#CAT)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)

---

#### ALIAS

```sh
cd ~
ls -la
vi .profile
```

```sh
alias la="ls -la"
$ la
la: not found
$
$ alias la="ls -la"
$ la
```

[^^^](#CMD_FLASH)

---

#### CAT

It reads data from the file and gives their content as output. It helps us to create, view, concatenate files.

##### READ_THE_CONTENT

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

##### READ_THE_CONTENT_WITH_LINENUMS

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

##### READ_THE_CONTENT_FROM_3RD_LINE

```sh
cat -n file_name.txt | more +3
```

```sh
ttltrk-mbp:TEST attilatorok$ cat -n test3.txt | more +3
     3  harmadik sor
     4  negyedik sor es
     5  az utolso otodik sor
```

##### CONCATENATE_TWO_FILES_INTO_THE_3RD

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

[^^^](#CMD_FLASH)

---

####

[^^^](#CMD_FLASH)

---

####

[^^^](#CMD_FLASH)

---

####

[^^^](#CMD_FLASH)

---

####

[^^^](#CMD_FLASH)

---

####

[^^^](#CMD_FLASH)

---

####

[^^^](#CMD_FLASH)

---

####

[^^^](#CMD_FLASH)

---

####

[^^^](#CMD_FLASH)

---
