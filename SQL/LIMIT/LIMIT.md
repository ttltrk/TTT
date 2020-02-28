
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### LIMIT

```
The SELECT TOP or LIMIT clause is used to specify the number of records to return.
```

---

* [BASICS](#BASICS)

---

#### BASICS

```sql
SELECT * FROM trk_test_01;

>>>
personid|lastname|firstname|address |city   |
--------|--------|---------|--------|-------|
       1|trk     |ttl      |Hlavna 5|TNO    |
       2|doe     |jon      |CA      |GS     |
       3|ewong   |samatha  |SFR     |Dallas |
       6|kawhi   |leo      |canada  |toronto|
       4|bbking  |bbe      |hemp    |ams    |
       5|petofi  |alex     |var     |BP     |
       7|jockey  |brent    |still   |GER    |
>>>

SELECT * FROM trk_test_01 LIMIT 3;

>>>
personid|lastname|firstname|address |city  |
--------|--------|---------|--------|------|
       1|trk     |ttl      |Hlavna 5|TNO   |
       2|doe     |jon      |CA      |GS    |
       3|ewong   |samatha  |SFR     |Dallas|
>>>
```

[^^^](#LIMIT)

---
