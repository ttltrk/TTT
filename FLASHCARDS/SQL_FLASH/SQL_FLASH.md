
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md) - SQL_FLASH

---

* [WHAT_IS_SQL](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/WHATIS/WHATIS.md)
* [RDBMS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/RDBMS/RDBMS.md)

DDL – Data Definition Language

* [CREATE_DB](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/CREATE_DB/CREATE_DB.md)
* [SHOW_DBS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SHOW_DB/SHOW_DB.md)
* [CREATE_TABLE](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/CREATE_TABLE/CREATE_TABLE.md)
* [SHOW_TABLES](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SHOW_TABLE/SHOW_TABLE.md)
* [CREATE_INDEX](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/CREATE_INDEX/CREATE_INDEX.md)
* [SHOW_INDEXS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SHOW_INDEX/SHOW_INDEX.md)
* [CREATE_VIEW](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/CREATE_VIEW/CREATE_VIEW.md)

ALTER TABLE - [ALTER_ADD_COLUMN](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/ALTER_ADD_COLUMN/ALTER_ADD_COLUMN.md) - [ALTER_DROP_COLUMN](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/ALTER_DROP_COLUMN/ALTER_DROP_COLUMN.md) - [ALTER_RENAME_COLUMN](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/ALTER_RENAME_COLUMN/ALTER_RENAME_COLUMN.md) - [ALTER_MODIFY_DATATYPE](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/ALTER_MODIFY_DATATYPE/ALTER_MODIFY_DATATYPE.md)

* [DROP_DB](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/DROP_DB/DROP_DB.md)
* [DROP_TABLE](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/DROP_TABLE/DROP_TABLE.md)
* [DROP_INDEX](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/DROP_INDEX/DROP_INDEX.md)
* [TRUNCATE_TABLE](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/TRUNCATE_TABLE/TRUNCATE_TABLE.md)

DML – Data Manipulation Language

* [INSERT_INTO](#INSERT_INTO)
* [UPDATE](#UPDATE)
* [DELETE](#DELETE)

DRL/DQL – Data Retrieval Language/Data Query Language

* [SELECT](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SELECT/SELECT.md)
* [SELECT_FROM_SELECT](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SELECT_FROM_SELECT/SELECT_FROM_SELECT.md)
* [SELECT_DISTINCT](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SELECT_DISTINCT/SELECT_DISTINCT.md)
* [SELECT_DISTINCT_ONLY_EVENS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SELECT_DISTINCT_ONLY_EVENS/SELECT_DISTINCT_ONLY_EVENS.md)
* [SELECT_DISTINCT_ONLY_ODD_NUMS](#SELECT_DISTINCT_ONLY_ODD_NUMS)
* [SELECT_DISTINCT_DIFFERENCE](#SELECT_DISTINCT_DIFFERENCE)
* [](#)
* [](#)
* [COUNT](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/COUNT/COUNT.md)
* [AVG](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/AVG/AVG.md)
* [SUM](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SUM/SUM.md)
* [MIN](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/MIN/MIN.md)
* [MAX](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/MAX/MAX.md)
* [](#)
* [](#)

ELSE

* [INSERT_INTO](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/INSERT/INSERT.md)
* [UPDATE](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/UPDATE/UPDATE.md)
* [DELETE](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/DELETE/DELETE.md)
* [INNER_JOIN](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/INNER_JOIN/INNER_JOIN.md)

---

#### SELECT_DISTINCT_ONLY_EVENS

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

[^^^](#SQL_FLASH)

---

#### SELECT_DISTINCT_ONLY_ODD_NUMS

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

[^^^](#SQL_FLASH)

---

#### SELECT_DISTINCT_DIFFERENCE

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

[^^^](#SQL_FLASH)

---

####

```sql

```

[^^^](#SQL_FLASH)

---

####

```sql

```

[^^^](#SQL_FLASH)

---

####

```sql

```

[^^^](#SQL_FLASH)

---

####

```sql

```

[^^^](#SQL_FLASH)

---

####

```sql

```

[^^^](#SQL_FLASH)

---

####

```sql

```

[^^^](#SQL_FLASH)

---

####

```sql

```

[^^^](#SQL_FLASH)

---

####

```sql

```

[^^^](#SQL_FLASH)

---

####

```sql

```

[^^^](#SQL_FLASH)

---

####

```sql

```

[^^^](#SQL_FLASH)

---

####

```sql

```

[^^^](#SQL_FLASH)

---
