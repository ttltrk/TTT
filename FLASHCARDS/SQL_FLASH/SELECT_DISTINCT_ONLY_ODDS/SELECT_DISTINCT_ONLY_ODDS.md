
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md) - [SQL_FLASH](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SQL_FLASH.md) - SELECT DISTINCT ONLY ODDS

---

```sql
--only odd numbers
SELECT DISTINCT personid FROM trk_test_01 WHERE Mod(personid,2)=1;

>>>
personid|
--------|
       1|
       3|
       5|
>>>
```

---
