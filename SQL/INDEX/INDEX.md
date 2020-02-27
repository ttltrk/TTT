
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### INDEX

---

[CREATE_INDEX](#CREATE_INDEX)
[DROP_INDEX](#DROP_INDEX)

---

```
Indexes are used to retrieve data from the database very fast.
The users cannot see the indexes, they are just used to speed up searches/queries.
```

---

#### CREATE_INDEX

```sql
SELECT * FROM pg_indexes WHERE tablename NOT LIKE 'pg%';

CREATE INDEX idx_lastname ON trk_test_01 (lastname);

SELECT * FROM pg_indexes WHERE tablename NOT LIKE 'pg%';
```

[^^^](#index)

---

#### DROP_INDEX

```sql
DROP INDEX idx_lastname;

SELECT * FROM pg_indexes WHERE tablename NOT LIKE 'pg%';
```

[^^^](#index)

---
