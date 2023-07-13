
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md) - [SQL_FLASH](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SQL_FLASH.md) - SHOW TABLES

---

```sql
SELECT *
FROM pg_catalog.pg_tables
WHERE schemaname != 'pg_catalog' AND
    schemaname != 'information_schema';
```

---
