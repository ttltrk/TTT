
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### NULL_VALUES

---

```
A field with a NULL value is a field with no value.
If a field in a table is optional, it is possible to insert a new record or update a record without
adding a value to this field. Then, the field will be saved with a NULL value.
```
---

* [BASICS](#BASICS)

---

#### BASICS

```sql
--The IS NULL operator is used to test for empty values (NULL values).

SELECT * FROM trk_test_01 WHERE lastname IS NOT NULL;
SELECT * FROM trk_test_01 WHERE lastname IS NULL;
```

[^^^](#NULL_VALUES)

---
