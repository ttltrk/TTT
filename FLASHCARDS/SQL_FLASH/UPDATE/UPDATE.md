
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md) - [SQL_FLASH](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SQL_FLASH.md) - UPDATE

---

The UPDATE statement is used to modify the existing records in a table.

```sql
select * from trk_test_01 order by personid;

>>>
personid|lastname|firstname|address |city   |
--------|--------|---------|--------|-------|
       1|trk     |ttl      |Hlavna 5|TNO    |
       2|doe     |jon      |CA      |GS     |
       3|ewong   |samatha  |SFR     |Dallas |
       4|bbking  |bbe      |hemp    |ams    |
       5|petofi  |alex     |var     |BP     |
       6|kawhi   |leo      |canada  |toronto|
       7|ray     |brent    |still   |GER    |
>>>
```

```sql
UPDATE public.trk_test_01
SET lastname='jockey', firstname='brent', address='still', city='GER'
WHERE personid=7;

select * from trk_test_01 order by personid;

>>>
personid|lastname|firstname|address |city   |
--------|--------|---------|--------|-------|
       1|trk     |ttl      |Hlavna 5|TNO    |
       2|doe     |jon      |CA      |GS     |
       3|ewong   |samatha  |SFR     |Dallas |
       4|bbking  |bbe      |hemp    |ams    |
       5|petofi  |alex     |var     |BP     |
       6|kawhi   |leo      |canada  |toronto|
       7|jockey  |brent    |still   |GER    |
>>>
```
