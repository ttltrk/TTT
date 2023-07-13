
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md) - [SQL_FLASH](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SQL_FLASH.md) - SHOW INDEXES

---

```sql
select indexname, indexdef
from pg_indexes
where tablename = 'trk_test_01';

indexname   |indexdef                                                                      |
------------+------------------------------------------------------------------------------+
idx_lastname|CREATE INDEX idx_lastname ON public.trk_test_01 USING btree (lastname)        |
idx_pname   |CREATE INDEX idx_pname ON public.trk_test_01 USING btree (lastname, firstname)|
```

---
