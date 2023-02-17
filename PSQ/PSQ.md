
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md)

---

### POSTGRESQL

---

```

```

---

* []()
* []()
* []()
* []()
* []()
* []()
* []()
* []()
* []()

---

#### FIRST_STEPS

```
codeally@0fe310113258:~/project$ echo hello PostgreSQL
hello PostgreSQL
codeally@0fe310113258:~/project$ psql --username=freecodecamp --dbname=postgres
Border style is 2.
Title is " ".
Pager usage is off.
psql (12.9 (Ubuntu 12.9-2.pgdg20.04+1))
Type "help" for help.

postgres=> \l
                               List of databases
+-----------+----------+----------+---------+---------+-----------------------+
|   Name    |  Owner   | Encoding | Collate |  Ctype  |   Access privileges   |
+-----------+----------+----------+---------+---------+-----------------------+
| postgres  | postgres | UTF8     | C.UTF-8 | C.UTF-8 |                       |
| template0 | postgres | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +|
|           |          |          |         |         | postgres=CTc/postgres |
| template1 | postgres | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +|
|           |          |          |         |         | postgres=CTc/postgres |
+-----------+----------+----------+---------+---------+-----------------------+
(3 rows)

postgres=>
```

[^^^](#POSTGRESQL)

---

#### CREATE_DB

```
postgres=> CREATE DATABASE first_database;
CREATE DATABASE
postgres=> \l
                                   List of databases
+----------------+--------------+----------+---------+---------+-----------------------+
|      Name      |    Owner     | Encoding | Collate |  Ctype  |   Access privileges   |
+----------------+--------------+----------+---------+---------+-----------------------+
| first_database | freecodecamp | UTF8     | C.UTF-8 | C.UTF-8 |                       |
| postgres       | postgres     | UTF8     | C.UTF-8 | C.UTF-8 |                       |
| template0      | postgres     | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +|
|                |              |          |         |         | postgres=CTc/postgres |
| template1      | postgres     | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +|
|                |              |          |         |         | postgres=CTc/postgres |
+----------------+--------------+----------+---------+---------+-----------------------+
(4 rows)

postgres=>

postgres=> CREATE DATABASE second_database;
CREATE DATABASE
postgres=> \l
                                    List of databases
+-----------------+--------------+----------+---------+---------+-----------------------+
|      Name       |    Owner     | Encoding | Collate |  Ctype  |   Access privileges   |
+-----------------+--------------+----------+---------+---------+-----------------------+
| first_database  | freecodecamp | UTF8     | C.UTF-8 | C.UTF-8 |                       |
| postgres        | postgres     | UTF8     | C.UTF-8 | C.UTF-8 |                       |
| second_database | freecodecamp | UTF8     | C.UTF-8 | C.UTF-8 |                       |
| template0       | postgres     | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +|
|                 |              |          |         |         | postgres=CTc/postgres |
| template1       | postgres     | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +|
|                 |              |          |         |         | postgres=CTc/postgres |
+-----------------+--------------+----------+---------+---------+-----------------------+
(5 rows)

postgres=>
```

[^^^](#POSTGRESQL)

---

#### CONNECT_TO_THE_DB

```
postgres=> \c second_database
You are now connected to database "second_database" as user "freecodecamp".
second_database=>
```

[^^^](#POSTGRESQL)

---

#### CREATE_AND_CHECK_TABLE

```
second_database=> CREATE TABLE first_table();
CREATE TABLE
second_database=> \d
               List of relations
+--------+-------------+-------+--------------+
| Schema |    Name     | Type  |    Owner     |
+--------+-------------+-------+--------------+
| public | first_table | table | freecodecamp |
+--------+-------------+-------+--------------+
(1 row)

second_database=>
```

[^^^](#POSTGRESQL)

---

#### DISPLAY_TABLE

```
second_database=> \d second_table
           Table "public.second_table"
+--------+------+-----------+----------+---------+
| Column | Type | Collation | Nullable | Default |
+--------+------+-----------+----------+---------+
+--------+------+-----------+----------+---------+

second_database=>
```

[^^^](#POSTGRESQL)

---

#### ADD_COLUMN

```
second_database=> ALTER TABLE second_table ADD COLUMN first_column INT;
ALTER TABLE
second_database=>
```

```
second_database=> ALTER TABLE second_table ADD COLUMN id INT;
ALTER TABLE
second_database=> \d second_table
                Table "public.second_table"
+--------------+---------+-----------+----------+---------+
|    Column    |  Type   | Collation | Nullable | Default |
+--------------+---------+-----------+----------+---------+
| first_column | integer |           |          |         |
| id           | integer |           |          |         |
+--------------+---------+-----------+----------+---------+

second_database=>

second_database=> ALTER TABLE second_table ADD COLUMN age INT;
ALTER TABLE
second_database=> \d second_table
                Table "public.second_table"
+--------------+---------+-----------+----------+---------+
|    Column    |  Type   | Collation | Nullable | Default |
+--------------+---------+-----------+----------+---------+
| first_column | integer |           |          |         |
| id           | integer |           |          |         |
| age          | integer |           |          |         |
+--------------+---------+-----------+----------+---------+

second_database=>
```

[^^^](#POSTGRESQL)

---

#### DROP_COLUMN

```
second_database=> ALTER TABLE second_table DROP COLUMN age;
ALTER TABLE
second_database=>
```

[^^^](#POSTGRESQL)

---

#### ADD_COLUMN

```
second_database=> ALTER TABLE second_table ADD COLUMN name VARCHAR(30);
ALTER TABLE
second_database=>
```

[^^^](#POSTGRESQL)

---

#### RENAME_COLUMN

```
second_database=> ALTER TABLE second_table RENAME COLUMN name TO username;
ALTER TABLE
second_database=>
```

[^^^](#POSTGRESQL)

---

####

[^^^](#POSTGRESQL)

---

####

[^^^](#POSTGRESQL)

---

####

[^^^](#POSTGRESQL)

---

####

[^^^](#POSTGRESQL)

---

####

[^^^](#POSTGRESQL)

---

####

[^^^](#POSTGRESQL)

---

####

[^^^](#POSTGRESQL)

---

####

[^^^](#POSTGRESQL)

---

####

[^^^](#POSTGRESQL)

---
