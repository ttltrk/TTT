
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md)

---

### SQL_FLASH

---

DDL – Data Definition Language

* [CREATE_DB](#CREATE_DB)
* [CREATE_TABLE](#CREATE_TABLE)
* [CREATE_INDEX](#CREATE_INDEX)
* [CREATE_VIEW](#CREATE_VIEW)
* [ALTER](#ALTER)
* [DROP_DB](#DROP_DB)
* [DROP_TABLE](#DROP_TABLE)
* [DROP_INDEX](#DROP_INDEX)
* [TRUNCATE_TABLE](#TRUNCATE_TABLE)

DML – Data Manipulation Language

* [INSERT_INTO](#INSERT_INTO)
* [UPDATE](#UPDATE)
* [DELETE](#DELETE)

DRL/DQL – Data Retrieval Language/Data Query Language

* [SELECT](#SELECT)
* [SELECT_FROM_SELECT](#SELECT_FROM_SELECT)
* [SELECT_DISTINCT](#SELECT_DISTINCT)
* [SELECT_DISTINCT_ONLY_EVENS](#SELECT_DISTINCT_ONLY_EVENS)
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

#### CREATE_VIEW

view = virtual table

In SQL, a view is a virtual table based on the result-set of an SQL statement.
A view contains rows and columns, just like a real table. The fields in a view are fields from one or more real tables in the database.
You can add SQL functions, WHERE, and JOIN statements to a view and present the data as if the data were coming from one single table.

The following SQL creates a view that shows all customers from Brazil:

```sql
CREATE VIEW [Brazil Customers] AS
SELECT CustomerName, ContactName
FROM Customers
WHERE Country = 'Brazil';
```

- check views in postgre

```sql
select table_name from INFORMATION_SCHEMA.views;
```

- If you don't want the system views is your result, try this:

```sql
select table_name from INFORMATION_SCHEMA.views WHERE table_schema = ANY (current_schemas(false))
```

[^^^](#SQL_FLASH)

---

#### ALTER

The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.

##### ADD_COLUMN

To add a column in a table, use the following syntax

```sql
ALTER TABLE trk_test_02
ADD city varchar(255);
```

##### DROP_COLUMN

To delete a column in a table, use the following syntax

```sql
ALTER TABLE Customers
DROP COLUMN Email;
```

##### MODIFY_RENAME_COLUMN

To change a column name use the following syntax

```sql
ALTER TABLE trk_test_02
RENAME COLUMN department TO dep;
```

##### MODIFY_RENAME_TABLENAME

To change a table name use the following syntax

```sql
ALTER TABLE trk_test
RENAME TO trk_test_01;
```

[^^^](#SQL_FLASH)

---

#### DROP_DB

The DROP DATABASE statement is used to drop an existing SQL database.

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

[^^^](#SQL_FLASH)

---

#### DROP_TABLE

The DROP TABLE statement is used to drop an existing table in a database.

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

[^^^](#SQL_FLASH)

---

#### DROP_INDEX

The DROP INDEX statement is used to delete an index in a table.

- DB2

```sql
DROP INDEX index_name;
```

[^^^](#SQL_FLASH)

---

#### TRUNCATE_TABLE

The TRUNCATE TABLE statement is used to delete the data inside a table, but not the table itself.

```sql
TRUNCATE TABLE table_name;
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

truncate table trk_test_xx;

select * from trk_test_xx ttx;

personid|lastname|firstname|address|city|
--------+--------+---------+-------+----+
```

[^^^](#SQL_FLASH)

---

#### INSERT_INTO

The INSERT INTO statement is used to insert new records in a table.

```sql
select * from trk_test_01 order by personid;

>>>
personid|lastname|firstname|address |city   |
--------|--------|---------|--------|-------|
       1|trk     |ttl      |Hlavna 5|TNO    |
       2|doe     |jon      |CA      |GS     |
       3|ewong   |samatha  |SFR     |Dallas |
       4|bbking  |bbe      |hemp    |ams    |
       5|petofi  |alex     |var     |BP     |
       6|kawhi   |leo      |canada  |toronto|
>>>

INSERT INTO public.trk_test_01 (personid, lastname, firstname, address, city)
VALUES(7, 'ray', 'brent', 'still', 'GER');

select * from trk_test_01 order by personid;

>>>
personid|lastname|firstname|address |city   |
--------|--------|---------|--------|-------|
       1|trk     |ttl      |Hlavna 5|TNO    |
       2|doe     |jon      |CA      |GS     |
       3|ewong   |samatha  |SFR     |Dallas |
       4|bbking  |bbe      |hemp    |ams    |
       5|petofi  |alex     |var     |BP     |
       6|kawhi   |leo      |canada  |toronto|
       7|ray     |brent    |still   |GER    |
>>>
```

[^^^](#SQL_FLASH)

---

#### UPDATE

The UPDATE statement is used to modify the existing records in a table.

```sql
select * from trk_test_01 order by personid;

>>>
personid|lastname|firstname|address |city   |
--------|--------|---------|--------|-------|
       1|trk     |ttl      |Hlavna 5|TNO    |
       2|doe     |jon      |CA      |GS     |
       3|ewong   |samatha  |SFR     |Dallas |
       4|bbking  |bbe      |hemp    |ams    |
       5|petofi  |alex     |var     |BP     |
       6|kawhi   |leo      |canada  |toronto|
       7|ray     |brent    |still   |GER    |
>>>

UPDATE public.trk_test_01
SET lastname='jockey', firstname='brent', address='still', city='GER'
WHERE personid=7;

select * from trk_test_01 order by personid;

>>>
personid|lastname|firstname|address |city   |
--------|--------|---------|--------|-------|
       1|trk     |ttl      |Hlavna 5|TNO    |
       2|doe     |jon      |CA      |GS     |
       3|ewong   |samatha  |SFR     |Dallas |
       4|bbking  |bbe      |hemp    |ams    |
       5|petofi  |alex     |var     |BP     |
       6|kawhi   |leo      |canada  |toronto|
       7|jockey  |brent    |still   |GER    |
>>>
```

[^^^](#SQL_FLASH)

---

#### DELETE

The DELETE statement is used to delete existing records in a table.

```sql
SELECT * FROM trk_test_01;

>>>
personid|lastname|firstname|address |city   |
--------|--------|---------|--------|-------|
       1|trk     |ttl      |Hlavna 5|TNO    |
       2|doe     |jon      |CA      |GS     |
       3|ewong   |samatha  |SFR     |Dallas |
       6|kawhi   |leo      |canada  |toronto|
       4|bbking  |bbe      |hemp    |ams    |
       5|petofi  |alex     |var     |BP     |
       7|jockey  |brent    |still   |GER    |
       8|aaa     |bbbb     |cccc    |ddddd  |
>>>

DELETE FROM trk_test_01 WHERE firstname ='bbbb';

SELECT * FROM trk_test_01;

>>>
personid|lastname|firstname|address |city   |
--------|--------|---------|--------|-------|
       1|trk     |ttl      |Hlavna 5|TNO    |
       2|doe     |jon      |CA      |GS     |
       3|ewong   |samatha  |SFR     |Dallas |
       6|kawhi   |leo      |canada  |toronto|
       4|bbking  |bbe      |hemp    |ams    |
       5|petofi  |alex     |var     |BP     |
       7|jockey  |brent    |still   |GER    |
>>>
```

[^^^](#SQL_FLASH)

---

#### SELECT

The SELECT statement is used to select data from a database.
The data returned is stored in a result table, called the result-set.

```sql
SELECT * FROM trk_test_01;

>>>
personid|lastname|firstname|address |city   |
--------|--------|---------|--------|-------|
       1|trk     |ttl      |Hlavna 5|TNO    |
       2|doe     |jon      |CA      |GS     |
       3|ewong   |samatha  |SFR     |Dallas |
       6|kawhi   |leo      |canada  |toronto|
       4|bbking  |bbe      |hemp    |ams    |
       5|petofi  |alex     |var     |BP     |
>>>
```

```sql
SELECT * FROM trk_test_02;

>>>
systemid|dep       |city|
--------|----------|----|
       1|ITOPS     |BA  |
       2|DEVOPS    |BP  |
       3|HR        |SF  |
       4|MANAGEMENT|LA  |
       5|ITOPS     |BP  |
       6|ITOPS     |LN  |
       7|DEVOPS    |NYC |
>>>
```

```sql
SELECT personid, lastname FROM trk_test_01;

>>>
personid|lastname|
--------|--------|
       1|trk     |
       2|doe     |
       3|ewong   |
       6|kawhi   |
       4|bbking  |
       5|petofi  |
>>>
^^^
```

[^^^](#SQL_FLASH)

---

#### SELECT_FROM_SELECT


```sql
SELECT lastname FROM (SELECT * FROM trk_test_01) AS lname; --select from select

>>>
lastname|
--------|
trk     |
doe     |
ewong   |
kawhi   |
bbking  |
petofi  |
>>>
```

[^^^](#SQL_FLASH)

---

#### SELECT_DISTINCT

The SELECT DISTINCT statement is used to return only distinct (different) values.
Inside a table, a column often contains many duplicate values;
and sometimes you only want to list the different (distinct) values.

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

SELECT COUNT(DISTINCT city) FROM trk_test_02;

>>>
count|
-----|
    6|
>>>

SELECT COUNT(city) FROM trk_test_02;

>>>
count|
-----|
    7|
>>>
```

[^^^](#SQL_FLASH)

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
