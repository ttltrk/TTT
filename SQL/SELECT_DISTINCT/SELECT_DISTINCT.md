
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### SELECT DISTINCT

---

```
The SELECT DISTINCT statement is used to return only distinct (different) values.
Inside a table, a column often contains many duplicate values;
and sometimes you only want to list the different (distinct) values.
```

```sql
SELECT DISTINCT city FROM trk_test_02;
SELECT COUNT(DISTINCT city) FROM trk_test_02;
SELECT COUNT(city) FROM trk_test_02;
```

```sql
--only even numbers
SELECT DISTINCT personid FROM trk_test_01 WHERE Mod(personid,2)=0;

--only odd numbers
SELECT DISTINCT personid FROM trk_test_01 WHERE Mod(personid,2)=1;

--Write a query to find the difference between the total number of cities
--and the unique number of cities in the table STATION.
SELECT COUNT(city) - COUNT(DISTINCT city) FROM trk_test_02;
```

---
