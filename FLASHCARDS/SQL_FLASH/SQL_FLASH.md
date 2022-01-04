
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md)

---

### SQL_FLASH

---

DDL – Data Definition Language

* [CREATE_DB](#CREATE_DB)
* [CREATE_TABLE](#CREATE_TABLE)
* [CREATE_INDEX](#CREATE_INDEX)
* [](#)
* [](#)
* [](#)

DML – Data Manipulation Language

* [](#)
* [](#)
* [](#)
* [](#)
* [](#)

DRL/DQL – Data Retrieval Language/Data Query Language

* [](#)
* [](#)
* [](#)
* [](#)
* [](#)

ELSE

* [](#)
* [](#)
* [](#)
* [](#)
* [](#)


---

#### CREATE_DB

DDL – Data Definition Language

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

DDL – Data Definition Language

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

#### CREATE_INDEX

Indexes are used to retrieve data from the database more quickly than otherwise.
The users cannot see the indexes, they are just used to speed up searches/queries.

The SQL statement below creates an index named "idx_lastname"
on the "LastName" column in the "Persons" table:

```sql
CREATE INDEX idx_lastname
ON Persons (LastName);
```

If you want to create an index on a combination of columns, you can list the column names
within the parentheses, separated by commas:

```sql
CREATE INDEX idx_pname
ON Persons (LastName, FirstName);
```

[^^^](#SQL_FLASH)

---
