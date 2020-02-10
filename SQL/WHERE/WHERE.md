
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### WHERE

---

```
The WHERE clause is used to filter records.
The WHERE clause is used to extract only those records that fulfill a specified condition.
```

```sql
SELECT * FROM trk_test_01 WHERE lastname='kawhi';
SELECT * FROM trk_test_02 WHERE city='BP';
```

---

```
SQL requires single quotes around text values (most database systems will also allow double quotes).
However, numeric fields should not be enclosed in quotes:
```

```sql
SELECT * FROM trk_test_02 WHERE systemid=5;
```

```
Operators in The WHERE Clause

=	Equal
>	Greater than
<	Less than
>=	Greater than or equal
<=	Less than or equal
<>	Not equal. Note: In some versions of SQL this operator may be written as !=
BETWEEN	Between a certain range
LIKE	Search for a pattern
IN	To specify multiple possible values for a column
```

---
