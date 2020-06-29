
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md)

---

### ORACLE

---

```

```

---

* [SGA](#SGA)
* [PGA](#PGA)
* []()

---

#### SGA

```
System Global Area

The SGA is a group of shared memory structures that contain data and control information
for one database instance. Examples of SGA components include cached data blocks and shared SQL areas.
```

```
SGA >> Database Buffer cache (Flash buffer, Buffer pools, Non Default Buffer Pools) >> Redo Log Buffer >> Redo log writer (LGWR)
    >> redo log files >> Archive process (ARCHn) >> Archived redo log files >> RMAN >> Backups/Cloud
```

[^^^](#ORACLE)

---

#### PGA

```
Program Global Area

The PGA is memory specific to an operating process or thread that is not shared by other processes
or threads on the system. Because the PGA is process-specific, it is never allocated in the SGA.
```

```
PGA (SQL Work Areas, User Global Area, Private SQL Area)
```

[^^^](#ORACLE)

---
