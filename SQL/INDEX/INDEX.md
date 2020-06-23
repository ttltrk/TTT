
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### INDEX

---

```
Indexes are used to retrieve data from the database very fast.
The users cannot see the indexes, they are just used to speed up searches/queries.
By using indexes we can save time and can improve the performance of db queries and apps
```

---

- [CREATE_INDEX](#CREATE_INDEX)
- [DROP_INDEX](#DROP_INDEX)

---

#### CREATE_INDEX

```sql
SELECT * FROM pg_indexes WHERE tablename NOT LIKE 'pg%';

>>>
schemaname|tablename  |indexname       |tablespace|indexdef                                                                         |
----------|-----------|----------------|----------|---------------------------------------------------------------------------------|
public    |trk_test_01|trk_test_01_pkey|          |CREATE UNIQUE INDEX trk_test_01_pkey ON public.trk_test_01 USING btree (personid)|
>>>

CREATE INDEX idx_lastname ON trk_test_01 (lastname);

SELECT * FROM pg_indexes WHERE tablename NOT LIKE 'pg%';

>>>
schemaname|tablename  |indexname       |tablespace|indexdef                                                                         |
----------|-----------|----------------|----------|---------------------------------------------------------------------------------|
public    |trk_test_01|trk_test_01_pkey|          |CREATE UNIQUE INDEX trk_test_01_pkey ON public.trk_test_01 USING btree (personid)|
public    |trk_test_01|idx_lastname    |          |CREATE INDEX idx_lastname ON public.trk_test_01 USING btree (lastname)           |
>>>
```

[^^^](#index)

---

#### DROP_INDEX

```sql
SELECT * FROM pg_indexes WHERE tablename NOT LIKE 'pg%';

>>>
schemaname|tablename  |indexname       |tablespace|indexdef                                                                         |
----------|-----------|----------------|----------|---------------------------------------------------------------------------------|
public    |trk_test_01|trk_test_01_pkey|          |CREATE UNIQUE INDEX trk_test_01_pkey ON public.trk_test_01 USING btree (personid)|
public    |trk_test_01|idx_lastname    |          |CREATE INDEX idx_lastname ON public.trk_test_01 USING btree (lastname)           |
>>>

DROP INDEX idx_lastname;

SELECT * FROM pg_indexes WHERE tablename NOT LIKE 'pg%';

>>>
schemaname|tablename  |indexname       |tablespace|indexdef                                                                         |
----------|-----------|----------------|----------|---------------------------------------------------------------------------------|
public    |trk_test_01|trk_test_01_pkey|          |CREATE UNIQUE INDEX trk_test_01_pkey ON public.trk_test_01 USING btree (personid)|
>>>
```

[^^^](#index)

---
