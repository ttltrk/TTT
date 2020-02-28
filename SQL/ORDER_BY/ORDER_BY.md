
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### ORDER_BY

---

```
The ORDER BY keyword is used to sort the result-set in ascending or descending order.
The ORDER BY keyword sorts the records in ascending order by default.
To sort the records in descending order, use the DESC keyword.
```

---

* [BASICS](#BASICS)
* [ORDER_BY_SEVERAL_COL](#ORDER_BY_SEVERAL_COL)

---

##### BASICS

```sql
SELECT * FROM trk_test_01 ORDER BY city;

>>>
personid|lastname|firstname|address |city   |
--------|--------|---------|--------|-------|
       4|bbking  |bbe      |hemp    |ams    |
       5|petofi  |alex     |var     |BP     |
       3|ewong   |samatha  |SFR     |Dallas |
       2|doe     |jon      |CA      |GS     |
       1|trk     |ttl      |Hlavna 5|TNO    |
       6|kawhi   |leo      |canada  |toronto|
>>>
```

```sql
SELECT * FROM trk_test_01 ORDER BY city DESC;

>>>
personid|lastname|firstname|address |city   |
--------|--------|---------|--------|-------|
       6|kawhi   |leo      |canada  |toronto|
       1|trk     |ttl      |Hlavna 5|TNO    |
       2|doe     |jon      |CA      |GS     |
       3|ewong   |samatha  |SFR     |Dallas |
       5|petofi  |alex     |var     |BP     |
       4|bbking  |bbe      |hemp    |ams    |
>>>
```

```sql
SELECT * FROM trk_test_01 ORDER BY city ASC;

>>>
personid|lastname|firstname|address |city   |
--------|--------|---------|--------|-------|
       4|bbking  |bbe      |hemp    |ams    |
       5|petofi  |alex     |var     |BP     |
       3|ewong   |samatha  |SFR     |Dallas |
       2|doe     |jon      |CA      |GS     |
       1|trk     |ttl      |Hlavna 5|TNO    |
       6|kawhi   |leo      |canada  |toronto|
>>>
```

[^^^](#ORDER_BY)

---

#### ORDER_BY_SEVERAL_COL

```SQL
SELECT * FROM trk_test_02 ORDER BY dep, city;

>>>
systemid|dep       |city|
--------|----------|----|
       2|DEVOPS    |BP  |
       7|DEVOPS    |NYC |
       3|HR        |SF  |
       1|ITOPS     |BA  |
       5|ITOPS     |BP  |
       6|ITOPS     |LN  |
       4|MANAGEMENT|LA  |
>>>
```

```SQL
SELECT * FROM trk_test_02 ORDER BY city, dep;

>>>
systemid|dep       |city|
--------|----------|----|
       1|ITOPS     |BA  |
       2|DEVOPS    |BP  |
       5|ITOPS     |BP  |
       4|MANAGEMENT|LA  |
       6|ITOPS     |LN  |
       7|DEVOPS    |NYC |
       3|HR        |SF  |
>>>
```

```SQL
SELECT * FROM trk_test_02 ORDER BY dep ASC, city DESC;

>>>
systemid|dep       |city|
--------|----------|----|
       7|DEVOPS    |NYC |
       2|DEVOPS    |BP  |
       3|HR        |SF  |
       6|ITOPS     |LN  |
       5|ITOPS     |BP  |
       1|ITOPS     |BA  |
       4|MANAGEMENT|LA  |
>>>
```

[^^^](#ORDER_BY)

---
