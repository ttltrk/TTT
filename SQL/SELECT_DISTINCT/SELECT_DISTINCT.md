
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### SELECT_DISTINCT

---

```
The SELECT DISTINCT statement is used to return only distinct (different) values.
Inside a table, a column often contains many duplicate values;
and sometimes you only want to list the different (distinct) values.
```

---

* [BASICS](#BASICS)
* [ONLY_EVEN_NUMS](#ONLY_EVEN_NUMS)
* [ONLY_ODD_NUMS](#ONLY_ODD_NUMS)
* [DIFFERENCE](#DIFFERENCE)

---

#### BASICS

```sql
SELECT DISTINCT city FROM trk_test_02;

>>>
city|
----|
LA  |
SF  |
LN  |
BA  |
NYC |
BP  |
>>>
```

```sql
SELECT COUNT(DISTINCT city) FROM trk_test_02;

>>>
count|
-----|
    6|
>>>
```

```sql
SELECT COUNT(city) FROM trk_test_02;

>>>
count|
-----|
    7|
>>>
```

[^^^](#SELECT_DISTINCT)

---

#### ONLY_EVEN_NUMS

```sql
--only even numbers
SELECT DISTINCT personid FROM trk_test_01 WHERE Mod(personid,2)=0;

>>>
personid|
--------|
       2|
       4|
       6|
>>>
```

[^^^](#SELECT_DISTINCT)

---

#### ONLY_ODD_NUMS

```sql
--only odd numbers
SELECT DISTINCT personid FROM trk_test_01 WHERE Mod(personid,2)=1;

>>>
personid|
--------|
       1|
       3|
       5|
>>>
```

[^^^](#SELECT_DISTINCT)

---

#### DIFFERENCE

```sql
--Write a query to find the difference between the total number of cities
--and the unique number of cities in the table STATION.
SELECT COUNT(city) - COUNT(DISTINCT city) FROM trk_test_02;

>>>
?column?|
--------|
       1|
>>>
```

[^^^](#SELECT_DISTINCT)

---
