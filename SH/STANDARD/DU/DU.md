
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SH](https://github.com/ttltrk/TTT/blob/master/SH/SH.md) - [STANDARD](https://github.com/ttltrk/TTT/blob/master/SH/STANDARD/STANDARD.md)

---

### DU

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
$ du
         6 ./DELTA
         2 ./dos2unix
  25033830 ./EXP_PRD/trk/nonstage
   2165384 ./EXP_PRD/trk/nonstage_new
  27199215 ./EXP_PRD/trk
  27199216 ./EXP_PRD
         8 ./HR
     11447 ./MILOS EXP
      1587 ./sanity_checks/monthly_bundling
      1705 ./sanity_checks/weekly_bundling
      3293 ./sanity_checks
  27214487 .
$
```

```sh
$ du -h
    3.00KB ./DELTA
    1.00KB ./dos2unix
   11.94GB ./EXP_PRD/trk/nonstage
    1.03GB ./EXP_PRD/trk/nonstage_new
   12.97GB ./EXP_PRD/trk
   12.97GB ./EXP_PRD
    4.00KB ./HR
    5.59MB ./MILOS EXP
  793.50KB ./sanity_checks/monthly_bundling
  852.50KB ./sanity_checks/weekly_bundling
    1.61MB ./sanity_checks
   12.98GB .
$
```

```sh
$ du -h DOCS
   43.50KB DOCS/OWN
   14.95MB DOCS/PY3/1-50
   16.26MB DOCS/PY3/101-150
   16.05MB DOCS/PY3/151-200
   17.11MB DOCS/PY3/201-250
   16.49MB DOCS/PY3/251-300
   15.97MB DOCS/PY3/301-350
   16.18MB DOCS/PY3/51-100
  113.01MB DOCS/PY3
  160.65MB DOCS
$
```

```sh
du -g /path/path #giga
du -m /path/path #mega
du -a /path/path/path | sort -n -r | head -n 10 #top 10 biggest file in the dir
```

```sh
[blabla:/home/xxx] # find  /bla/bla/bla/ -mtime +365 | wc -l
     166

van 166 olyan 2M fájlunk, ami egy éve ott van

[blabla:/home/xxx] # du -g //bla/bla/bla/
31.85   //bla/bla/bla/

32Giga van benne jelenleg


[blabla:/blabla/blabla/blabla] # df -g /dev/lv_bbb
Filesystem    GB blocks      Free %Used    Iused %Iused Mounted on
/dev/lv_bbb     675.00    219.57   68%   242099     1% /mclm
[blabla:/blabla/blabla/blabla] #
```

only display df lines that have more fs usage than 70%

```sh
df -P | awk '0+$5 >= 70 {print}'
```

automatic monitoring

```
#!/bin/sh

warninglimit=500000
lowlimit=250000

filesystems="/export/data /export/home /"

for fs in $filesystems
do
        size=`df -k $fs|grep $fs|awk '{ print $4; }'`
        if [ $size -le $lowlimit ]
        then
                mailx -s "URGENT: Low disk space for $fs ($size)"
                break
        fi
```

[^^^](#DU)
