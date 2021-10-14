
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### DROP

---

```

```

---

- [DROP_DB](#DROP_DB)
- [DROP_TABLE](#DROP_TABLE)
- [DROP_INDEX](#DROP_INDEX)

---

#### DROP_DB

```
The DROP DATABASE statement is used to drop an existing SQL database.
```

```sql
DROP DATABASE databasename;
```

```sql
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
testdb_02|

drop database testdb_02;

SELECT datname FROM pg_database
WHERE datistemplate = false;

datname  |
---------+
postgres |
test     |
for_rec  |
testdb   |
testdb_01|
```

[^^^](#DROP)

---

#### DROP_TABLE

```
The DROP TABLE statement is used to drop an existing table in a database.
```

```sql
DROP TABLE table_name;
```

[^^^](#DROP)

---

#### DROP_INDEX

```
The DROP INDEX statement is used to delete an index in a table.
```

**DB2**

```sql
DROP INDEX index_name;
```

[^^^](#DROP)

---
