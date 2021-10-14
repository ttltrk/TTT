
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

```sql
select * from trk_test_xx ttx;

personid|lastname|firstname|address |city   |
--------+--------+---------+--------+-------+
       1|trk     |ttl      |Hlavna 5|TNO    |
       2|doe     |jon      |CA      |GS     |
       3|ewong   |samatha  |SFR     |Dallas |
       6|kawhi   |leo      |canada  |toronto|
       4|bbking  |bbe      |hemp    |ams    |
       5|petofi  |alex     |var     |BP     |
       7|jockey  |brent    |still   |GER    |

drop table trk_test_xx;

select * from trk_test_xx ttx;

SQL Error [42P01]: ERROR: relation "trk_test_xx" does not exist
  Position: 15
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
