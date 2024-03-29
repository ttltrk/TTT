
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### SQL_FLASH

---

* [CREATE_DB](#CREATE_DB)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)

---

#### CREATE_DB

```
The CREATE DATABASE statement is used to create a new SQL database.
```

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

[^^^](#SQL_FLASH)

---

#### CREATE_TABLE

```
The CREATE TABLE statement is used to create a new table in a database.
```

```sql
CREATE TABLE trk (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
```

##### CREATE TABLE USING ANOTHER TABLE

```sql
create table trk_test_xx as select * from trk_test_01;
```

[^^^](#SQL_FLASH)

---
