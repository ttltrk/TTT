
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SH](https://github.com/ttltrk/TTT/blob/master/SH/SH.md) - [STANDARD](https://github.com/ttltrk/TTT/blob/master/SH/STANDARD/STANDARD.md)

---

### PS

---

```
report a snapshot of current processes
```

---

* [BASICS](#BASICS)

---

#### BASICS

```
process check
```

```sh
ps -ef | grep file_name
```

```sh
ps -ef | grep file_name | wc -l
```

```sh
$ ps -ef | grep http
AttilaTo  11640  14504  0 06:27:23 con  <blablabla> 0:00  --v=1
AttilaTo  14348   8484  0 06:29:37 con  <blablabla> 0:00  --annotation=ver
AttilaTo  18880   4116  0 14:48:42 con  0:00 grep http
$
$
$ ps -ef | grep http | wc -l
      3
$
$
$ ps -ef | grep http | grep -v grep | wc -l
      2
$
```

```sh
ps aux | grep <pname>
```

- how to find an app as per the PID 

```sh
serv_01:/home/TTLTRK$ netstat -Aan | grep 9444
f1b8 tcp4       0      0  1.11.11.11     1.11.11.11     ioio
f1b8 tcp        0      0  *.9444                *.*                   ioio
serv_01:/home/TTLTRK$ netstat -Aan | grep 9444
f1b8 tcp4       0      0  1.11.11.11     1.11.11.11     FIN_WAIT_2
f1b8 tcp4       0      0  1.11.11.11     1.11.11.11     FIN_WAIT_2
f1b8 tcp4       0      0  1.11.11.11     1.11.11.11   FIN_WAIT_2
f1b8 tcp4       0      0  1.11.11.11     1.11.11.11   ESTABLISHED
f1b8 tcp        0      0  *.9444                *.*                   LISTEN
serv_01:/home/TTLTRK$ rmsock f100050005a0abb8 tcpcb
The socket 0xf100050005a0a808 is being held by proccess 6422748 (java).
serv_01:/home/TTLTRK$ ps -ef | grep 6422748
     blablabla
     blablabla
     blablabla
serv_01:/home/TTLTRK$
```

[^^^](#PS)
