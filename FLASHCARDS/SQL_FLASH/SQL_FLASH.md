
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

---

DML – Data Manipulation Language

```sql
--INSERT INTO
INSERT INTO public.trk_test_01 (personid, lastname, firstname, address, city)
VALUES(7, 'ray', 'brent', 'still', 'GER');

--UPDATE
UPDATE public.trk_test_01
SET lastname='jockey', firstname='brent', address='still', city='GER'
WHERE personid=7;

--DELETE
DELETE FROM trk_test_01 WHERE firstname ='bbbb';
```

* [INSERT_INTO](#INSERT_INTO)
* [UPDATE](#UPDATE)
* [DELETE](#DELETE)

---

DRL/DQL – Data Retrieval Language/Data Query Language

```sql
--SELECT
SELECT * FROM trk_test_01;

--SELECT DISTINCT
SELECT DISTINCT city FROM trk_test_02;

--SELECT TOP
SELECT TOP 3 * FROM trk_test_01;

--WHERE
SELECT * FROM trk_test_01 WHERE lastname='kawhi';

--AND
SELECT * FROM trk_test_02 WHERE city='BP' AND dep='DEVOPS';

--OR
SELECT * FROM trk_test_02 WHERE city='BP' OR city='BA';

--NOT
SELECT * FROM trk_test_02 WHERE NOT city='BP';

--ORDER BY
SELECT * FROM trk_test_01 ORDER BY city ASC;

--LIMIT
SELECT * FROM trk_test_01 LIMIT 3;

--MIN
--MAX
--COUNT
--AVG
--SUM
--BETWEEN
--IN
--LIKE

--INER JOIN
SELECT trk_test_01.personid AS ID, trk_test_01.lastname, trk_test_02.dep, trk_test_02.city
FROM trk_test_01
INNER JOIN trk_test_02
ON trk_test_01.personid=trk_test_02.systemid;

```

* [SELECT](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SELECT/SELECT.md)
* [SELECT_FROM_SELECT](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SELECT_FROM_SELECT/SELECT_FROM_SELECT.md)
* [SELECT_DISTINCT](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SELECT_DISTINCT/SELECT_DISTINCT.md)
* [SELECT_DISTINCT_ONLY_EVENS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SELECT_DISTINCT_ONLY_EVENS/SELECT_DISTINCT_ONLY_EVENS.md)
* [SELECT_DISTINCT_ONLY_ODD_NUMS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SELECT_DISTINCT_ONLY_ODDS/SELECT_DISTINCT_ONLY_ODDS.md)
* [SELECT_DISTINCT_DIFFERENCE](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SELECT_DISTINCT_DIFFERENCE/SELECT_DISTINCT_DIFFERENCE.md)
* [](#)
* [](#)
* [COUNT](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/COUNT/COUNT.md)
* [AVG](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/AVG/AVG.md)
* [SUM](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SUM/SUM.md)
* [MIN](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/MIN/MIN.md)
* [MAX](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/MAX/MAX.md)
* [](#)
* [](#)

* [INNER_JOIN](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/INNER_JOIN/INNER_JOIN.md)

---
