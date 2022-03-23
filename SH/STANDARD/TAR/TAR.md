
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SH](https://github.com/ttltrk/TTT/blob/master/SH/SH.md) - [STANDARD](https://github.com/ttltrk/TTT/blob/master/SH/STANDARD/STANDARD.md)

---

### TAR

---

pack 1 file

```
tar -cvf whatever_name.tar.gz name_of_the_folder
tar -cvf trk.tar.gz trk
```

pack multiple files

```
tar -cvf trk_prod_toCPC_20220322.tar.gz /path/path/file1 /path/path/file2 /path/path/file3
```

move between the servers

```
sh -c 'scp -r /path/path/trk.tar.gz ttltrk@blablaserver:/home/ttltrk'
```

unpack

```
tar -xvf trk.tar.gz
```

---
