
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### WHERE

---

```
The WHERE clause is used to filter records.
The WHERE clause is used to extract only those records that fulfill a specified condition.
```

---

* [BASICS](#BASICS)
* [OPERATORS](#OPERATORS)

---

#### BASICS

```sql
SELECT * FROM trk_test_01 WHERE lastname='kawhi';

>>>
personid|lastname|firstname|address|city   |
--------|--------|---------|-------|-------|
       6|kawhi   |leo      |canada |toronto|
>>>
```

```sql
SELECT * FROM trk_test_02 WHERE city='BP';

>>>
systemid|dep   |city|
--------|------|----|
       2|DEVOPS|BP  |
       5|ITOPS |BP  |
>>>
```

```sql
SELECT * FROM trk_test_02 WHERE systemid=5;

>>>
systemid|dep  |city|
--------|-----|----|
       5|ITOPS|BP  |
>>>
```

[^^^](#WHERE)

---

#### OPERATORS

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

[^^^](#WHERE)

---
