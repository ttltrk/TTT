
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md) - [SQL_FLASH](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SQL_FLASH.md) - SHOW DBS

---

```sql
SELECT datname
FROM pg_database
WHERE datistemplate = false;

datname  |
---------+
postgres |
test     |
testdb_01|
```

---
