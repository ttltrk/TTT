
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### HAVING

---

```
The HAVING clause was added to SQL because the WHERE keyword could not be used with aggregate functions.
```

---

* [BASICS](#BASICS)


---

#### BASICS

```sql
SELECT COUNT(systemid), dep
FROM trk_test_02
GROUP BY dep
HAVING COUNT(systemid) >= 2;

>>>
count|dep   |
-----|------|
    2|DEVOPS|
    3|ITOPS |

>>>
```


[^^^](#HAVING)

---
