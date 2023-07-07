
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md) - SQL_FLASH

---

* [WHAT_IS_SQL](#WHAT_IS_SQL)
* [RDBMS](#RDBMS)

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
* [SELECT_DISTINCT_ONLY_ODD_NUMS](#SELECT_DISTINCT_ONLY_ODD_NUMS)
* [SELECT_DISTINCT_DIFFERENCE](#SELECT_DISTINCT_DIFFERENCE)
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

* [INSERT_INTO](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/INSERT/INSERT.md)
* [UPDATE](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/UPDATE/UPDATE.md)
* [DELETE](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/DELETE/DELETE.md)
* [INNER_JOIN](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/INNER_JOIN/INNER_JOIN.md)
* [](#)
* [](#)
* [](#)
* [](#)


---

#### WHAT_IS_SQL

- SQL stands for Structured Query Language
- SQL lets you access and manipulate databases
- SQL became a standard of the American National Standards Institute (ANSI) in 1986, and of the International Organization for Standardization (ISO) in 1987

[^^^](#SQL_FLASH)

---

#### RDBMS

RDBMS stands for Relational Database Management System.

RDBMS is the basis for SQL, and for all modern database systems such as MS SQL Server, IBM DB2, Oracle, MySQL, and Microsoft Access.

The data in RDBMS is stored in database objects called tables. A table is a collection of related data entries and it consists of columns and rows.

Every table is broken up into smaller entities called fields. The fields in the Customers table consist of CustomerID, CustomerName, ContactName, Address, City, PostalCode and Country. A field is a column in a table that is designed to maintain specific information about every record in the table.

A record, also called a row, is each individual entry that exists in a table. For example, there are 91 records in the above Customers table. A record is a horizontal entity in a table.

A column is a vertical entity in a table that contains all information associated with a specific field in a table.

[^^^](#SQL_FLASH)

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
