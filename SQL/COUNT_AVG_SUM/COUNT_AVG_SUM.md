---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### COUNT_AVG_SUM

---

```
The COUNT() function returns the number of rows that matches a specified criteria.
The AVG() function returns the average value of a numeric column.
The SUM() function returns the total sum of a numeric column.
```

---

* [COUNT](#COUNT)
* [AVG](#AVG)
* [SUM](#SUM)

---

#### COUNT

```
Null values are not counted.
```

```sql
SELECT city FROM trk_test_02;

>>>
city|
----|
BA  |
BP  |
SF  |
LA  |
BP  |
LN  |
NYC |
>>>

SELECT COUNT(city) FROM trk_test_02;  

>>>
count|
-----|
    7|
>>>

SELECT COUNT(DISTINCT city) FROM trk_test_02;

>>>
count|
-----|
    6|
>>>
```

[^^^](#COUNT_AVG_SUM)

---

#### AVG

```
NULL values are ignored.
```

```sql
SELECT personid FROM trk_test_01;

>>>
personid|
--------|
       1|
       2|
       3|
       6|
       4|
       5|
       7|
>>>

SELECT AVG(personid) FROM trk_test_01;

>>>
avg               |
------------------|
4.0000000000000000|
>>>
```

[^^^](#COUNT_AVG_SUM)

---

#### SUM

```
NULL values are not counted.
```

```sql
SELECT personid FROM trk_test_01;

>>>
personid|
--------|
       1|
       2|
       3|
       6|
       4|
       5|
       7|
>>>

SELECT SUM(personid) as sum_of_personid FROM trk_test_01;

>>>
sum_of_personid|
---------------|
             28|
>>>
```

[^^^](#COUNT_AVG_SUM)

---
