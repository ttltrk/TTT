
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SH](https://github.com/ttltrk/TTT/blob/master/SH/SH.md)

---

### CRON

---

```sh
*      *    *          *     *
minute hour day(month) month day(week)

4 example:

At 00:05 in August.”
 at 2018-08-01 00:05:00

5 0 * 8 *
```

---

list all the jobs from cron between 22:00 and 23:00

```sh
crontab -l | grep "** 22"
```

---

edit cron

```sh
crontab -e
```

* [src](https://crontab.guru/)

---
