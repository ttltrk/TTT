
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### IN

---

```
The IN operator allows you to specify multiple values in a WHERE clause.
The IN operator is a shorthand for multiple OR conditions.
```

---

* [BASICS](#BASICS)
* [COMPARE_TWO_TABLES](#COMPARE_TWO_TABLES)

---

#### BASICS

```sql
SELECT city, address FROM trk_test_01 WHERE city IN ('GS', 'Dallas', 'toronto');

>>>
city   |address|
-------|-------|
GS     |CA     |
Dallas |SFR    |
toronto|canada |
>>>
```

```SQL
SELECT city, address FROM trk_test_01 WHERE city NOT IN ('GS', 'Dallas', 'toronto');

>>>
city|address |
----|--------|
TNO |Hlavna 5|
ams |hemp    |
BP  |var     |
GER |still   |
>>>
```

[^^^](#IN)

---

#### COMPARE_TWO_TABLES

```sql
select * from trk_test_01;

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

select * from trk_test_02;

>>>
systemid|dep       |city|
--------|----------|----|
       1|ITOPS     |BA  |
       2|DEVOPS    |BP  |
       3|HR        |SF  |
       4|MANAGEMENT|LA  |
       5|ITOPS     |BP  |
       6|ITOPS     |LN  |
       7|DEVOPS    |NYC |
       8|ARCHITECT |GER |
>>>

SELECT * FROM trk_test_01 WHERE city IN (SELECT city FROM trk_test_02);

>>>
personid|lastname|firstname|address|city|
--------|--------|---------|-------|----|
       5|petofi  |alex     |var    |BP  |
       7|jockey  |brent    |still  |GER |
>>>
```

[^^^](#IN)

---
