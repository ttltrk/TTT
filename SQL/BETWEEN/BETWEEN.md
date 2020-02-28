---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### BETWEEN

---

```
The BETWEEN operator selects values within a given range.
The values can be numbers, text, or dates.
The BETWEEN operator is inclusive: begin and end values are included.
```

---

* [BASICS](#BASICS)

---

#### BASICS

```sql
SELECT * FROM trk_test_01 ORDER BY personid;

>>>
personid|lastname|firstname|address |city   |
--------|--------|---------|--------|-------|
       1|trk     |ttl      |Hlavna 5|TNO    |
       2|doe     |jon      |CA      |GS     |
       3|ewong   |samatha  |SFR     |Dallas |
       4|bbking  |bbe      |hemp    |ams    |
       5|petofi  |alex     |var     |BP     |
       6|kawhi   |leo      |canada  |toronto|
       7|jockey  |brent    |still   |GER    |
>>>

SELECT * FROM trk_test_01 WHERE personid BETWEEN 2 AND 4;       

>>>
personid|lastname|firstname|address|city  |
--------|--------|---------|-------|------|
       2|doe     |jon      |CA     |GS    |
       3|ewong   |samatha  |SFR    |Dallas|
       4|bbking  |bbe      |hemp   |ams   |
>>>

SELECT * FROM trk_test_01 WHERE personid not BETWEEN 2 AND 4 order by personid;   

>>>
personid|lastname|firstname|address |city   |
--------|--------|---------|--------|-------|
       1|trk     |ttl      |Hlavna 5|TNO    |
       5|petofi  |alex     |var     |BP     |
       6|kawhi   |leo      |canada  |toronto|
       7|jockey  |brent    |still   |GER    |
>>>

SELECT * FROM trk_test_01 WHERE personid BETWEEN 2 AND 4 AND NOT lastname IN ('doe');

>>>
personid|lastname|firstname|address|city  |
--------|--------|---------|-------|------|
       3|ewong   |samatha  |SFR    |Dallas|
       4|bbking  |bbe      |hemp   |ams   |
>>>

SELECT * FROM trk_test_01 WHERE city BETWEEN 'GS' AND 'ams' ORDER BY city;

>>>
personid|lastname|firstname|address|city|
--------|--------|---------|-------|----|
>>>
```

[^^^](#BETWEEN)

---
