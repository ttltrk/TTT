
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md) - [SQL_FLASH](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SQL_FLASH.md) - CREATE DB

---

The ```CREATE DATABASE``` statement is used to create a new SQL database.

```sql
--create db in postgresql
CREATE DATABASE testDB_01;

--list out all the dbs
SELECT datname FROM pg_database
WHERE datistemplate = false;

datname  |
---------+
postgres |
test     |
for_rec  |
testdb   |
testdb_01|

CREATE DATABASE testDB_02;

SELECT datname FROM pg_database
WHERE datistemplate = false;

datname  |
---------+
postgres |
test     |
for_rec  |
testdb   |
testdb_01|
testdb_02|
```

---
