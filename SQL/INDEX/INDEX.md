
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
- [CLUSTERED_INDEX](#CLUSTERED_INDEX)
- [NONCLUSTERED_INDEX](#NONCLUSTERED_INDEX)

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

#### CLUSTERED_INDEX

```
A clustered index defines the order in which data is physically stored in a table.
Table data can be sorted in only way, therefore, there can be only one clustered index per table.
In SQL Server, the primary key constraint automatically creates a clustered index on that particular column.
```

```sql

>>>

>>>
```

[^^^](#index)

---

#### NONCLUSTERED_INDEX

```
A non-clustered index doesn’t sort the physical data inside the table.
In fact, a non-clustered index is stored at one place and table data is stored in another place.
This is similar to a textbook where the book content is located in one place and the index is located in another.
This allows for more than one non-clustered index per table.
```

```sql

>>>

>>>
```

[^^^](#index)

---
