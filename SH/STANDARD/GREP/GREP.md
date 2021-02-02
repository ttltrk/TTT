
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SH](https://github.com/ttltrk/TTT/blob/master/SH/SH.md) - [STANDARD](https://github.com/ttltrk/TTT/blob/master/SH/STANDARD/STANDARD.md)

---

### GREP

---

```

```

---

* [BASICS](#BASICS)

---

#### BASICS

```

```

how to find errors in the log files

```sh
$ ls -l log*.txt
-rwxrwxrwa   1 AzureAD\AttilaTorok AzureAD\AttilaTorok      78 Jul 23 14:03 log.txt
-rwxrwxrwa   1 AzureAD\AttilaTorok AzureAD\AttilaTorok      31 Jul 23 14:02 log2.txt
$
$ cat log.txt
hi
sec lne
third line 4th line
error - 4
5th line
sixth line
error - 7
$ cat log2.txt
abort - 1
hi
abort - 3
$ ttt.sh
log.txt:error - 4
log.txt:error - 7
log2.txt:abort - 1
log2.txt:abort - 3
$ cat ttt.sh
grep error log*.txt
grep abort log*.txt
```

```sh
$ cat ttt.sh
echo "pls enter your name"
read name
echo "hi" $name$
$
$ grep echo ttt.sh
echo "pls enter your name"
echo "hi" $name
$
$ grep read ttt.sh
read name
$
```

kiirja az 'a' betus sorokat


```sh
grep a file_name.txt

ttltrk-mbp:TEST attilatorok$ grep a test3.txt
masodik sor
harmadik sor
az utolso otodik sor
```

csak az 'a' betus sorokat nem irja ki


```sh
grep -v a file_name.txt

ttltrk-mbp:TEST attilatorok$ grep -v a test3.txt
elso sor
negyedik sor es
ttltrk-mbp:TEST attilatorok$
```

kiirja hogy egy keresett betu/szo/mondat hanyszor fordul elo a fileban


```sh
grep -c <word> file_name.txt
grep -c <char> file_name.txt
grep -c 'example sentence' file_name.txt

ttltrk-mbp:TEST attilatorok$ cat test3.txt
elso sor
masodik sor
harmadik sor
negyedik sor es
az utolso otodik sor
ttltrk-mbp:TEST attilatorok$ grep -c sor test3.txt
5
ttltrk-mbp:TEST attilatorok$ grep -c elso test3.txt
1
ttltrk-mbp:TEST attilatorok$ grep -c u test3.txt
1
ttltrk-mbp:TEST attilatorok$ grep -c 'elso sor' test3.txt
1
ttltrk-mbp:TEST attilatorok$
```

```sh
grep -c '<Contract>' API_IERP.xml
18630

grep contract_record_count API_IERP.xml
<contract_record_count>18630</contract_record_count>

grep -c '<Component>' API_IERP.xml
30366

grep component_record_count API_IERP.xml
<component_record_count>30366</component_record_count>
```

```sh

```

```sh

```

[^^^](#GREP)
