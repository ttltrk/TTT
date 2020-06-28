---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### CREATE

---

* [CREATE_DB](#CREATE_DB)
* [CREATE_TABLE](#CREATE_TABLE)
* [CREATE_INDEX](#CREATE_INDEX)
* [CREATE_VIEW](#CREATE_VIEW)

---

#### CREATE_DB

```
The CREATE DATABASE statement is used to create a new SQL database.
```

```sql

```

[^^^](#CREATE)

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

[^^^](#CREATE)

---

#### CREATE_INDEX

```
The SQL statement below creates an index named "idx_lastname"
on the "LastName" column in the "Persons" table:
```

```sql
CREATE INDEX idx_lastname
ON Persons (LastName);
```

```
If you want to create an index on a combination of columns, you can list the column names
within the parentheses, separated by commas:
```

```sql
CREATE INDEX idx_pname
ON Persons (LastName, FirstName);
```

[^^^](#CREATE)

---

#### CREATE_VIEW

```
In SQL, a view is a virtual table based on the result-set of an SQL statement.
A view contains rows and columns, just like a real table. The fields in a view are fields from one or more real tables in the database.
You can add SQL functions, WHERE, and JOIN statements to a view and present the data as if the data were coming from one single table.

The following SQL creates a view that shows all customers from Brazil:
```

```sql
CREATE VIEW [Brazil Customers] AS
SELECT CustomerName, ContactName
FROM Customers
WHERE Country = 'Brazil';
```

[^^^](#CREATE)

---
