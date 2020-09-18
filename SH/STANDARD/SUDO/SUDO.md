
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SH](https://github.com/ttltrk/TTT/blob/master/SH/SH.md) - [STANDARD](https://github.com/ttltrk/TTT/blob/master/SH/STANDARD/STANDARD.md)

---

### SUDO

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
[nza@t480 tmp]$ ls -l titok.txt
-rw-------. 1 root nza 7 Sep 17 08:46 titok.txt
[nza@t480 tmp]$ cat titok.txt
cat: titok.txt: Permission denied
[nza@t480 tmp]$ sudo cat titok.txt
TITOK!
[nza@t480 tmp]$ ls -l publikus.sh
-r-sr-xr-x. 1 root nza 27 Sep 17 08:47 publikus.sh
[nza@t480 tmp]$ cat publikus.sh
cat titok.txt ; echo "OKE"

[nza@t480 tmp]$ ./publikus.sh
cat: titok.txt: Permission denied
OKE
[nza@t480 tmp]$ sudo ./publikus.sh
TITOK!
OKE
[nza@t480 tmp]$
```

[^^^](#SUDO)

---
