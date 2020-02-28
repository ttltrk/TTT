
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### MIN_MAX

---

```
The MIN() function returns the smallest value of the selected column.
The MAX() function returns the largest value of the selected column.
```

---

* [MIN](#MIN)
* [MAX](#MAX)

---

#### MIN

```sql
SELECT systemid FROM trk_test_02;

>>>
systemid|
--------|
       1|
       2|
       3|
       4|
       5|
       6|
       7|
>>>

SELECT MIN(systemid) AS SmallestSysid FROM trk_test_02;

>>>
smallestsysid|
-------------|
            1|
>>>
```

[^^^](#MIN_MAX)

---

#### MAX

```sql
SELECT systemid FROM trk_test_02;

>>>
systemid|
--------|
       1|
       2|
       3|
       4|
       5|
       6|
       7|
>>>

SELECT MAX(systemid) AS LargestSysid FROM trk_test_02;

>>>
smallestsysid|
-------------|
            7|
>>>
```

[^^^](#MIN_MAX)

---
