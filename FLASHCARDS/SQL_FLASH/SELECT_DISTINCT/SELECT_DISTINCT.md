
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md) - [SQL_FLASH](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SQL_FLASH.md) - SELECT DISTINCT

---

The ```SELECT DISTINCT``` statement is used to return only distinct (different) values. Inside a table, a column often contains many duplicate values; and sometimes you only want to list the different (distinct) values.

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

---
