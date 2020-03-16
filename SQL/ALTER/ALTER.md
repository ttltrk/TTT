---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### ALTER

---

```
The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.
```

---

* [ADD_COLUMN](#ADD_COLUMN)
* [DROP_COLUMN](#DROP_COLUMN)
* [MODIFY_COLUMN](#MODIFY_COLUMN)
* [MODIFY_TABLENAME](#MODIFY_TABLENAME)

---

#### ADD_COLUMN

```
To add a column in a table, use the following syntax
```

```sql
ALTER TABLE trk_test_02
ADD city varchar(255);
```

[^^^](#ALTER)

---

#### DROP_COLUMN

```
To delete a column in a table, use the following syntax
```

```sql
ALTER TABLE Customers
DROP COLUMN Email;
```

[^^^](#ALTER)

---

#### MODIFY_COLUMN

```
To change a column name use the following syntax
```

```sql
ALTER TABLE trk_test_02
RENAME COLUMN department TO dep;
```

[^^^](#ALTER)

---

#### MODIFY_TABLENAME

```
To change a table name use the following syntax
```

```sql
ALTER TABLE trk_test
RENAME TO trk_test_01;
```

[^^^](#ALTER)

---
