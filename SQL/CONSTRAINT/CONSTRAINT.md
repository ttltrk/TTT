
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### CONSTRAINT

---

```
SQL constraints are used to specify rules for data in a table.
Constraints can be specified when the table is created with the CREATE TABLE statement,
or after the table is created with the ALTER TABLE statement.
Constraints can be column level or table level. Column level constraints apply to a column,
and table level constraints apply to the whole table.
```

---

* [BASICS](#BASICS)

---

#### BASICS

```SQL
CREATE TABLE table_name (
    column1 datatype constraint,
    column2 datatype constraint,
    column3 datatype constraint,
    ....
);
```

```
NOT NULL - Ensures that a column cannot have a NULL value
UNIQUE - Ensures that all values in a column are different
PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
FOREIGN KEY - Uniquely identifies a row/record in another table
CHECK - Ensures that all values in a column satisfies a specific condition
DEFAULT - Sets a default value for a column when no value is specified
INDEX - Used to create and retrieve data from the database very quickly
```

[^^^](#CONSTRAINT)

---
