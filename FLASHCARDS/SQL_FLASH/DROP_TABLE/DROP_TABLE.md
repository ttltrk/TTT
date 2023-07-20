
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md) - [SQL_FLASH](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SQL_FLASH.md) - DROP TABLE

---

The ```DROP TABLE``` statement is used to drop an existing table in a database.

```sql
DROP TABLE table_name;
```

```sql
select * from trk_test_xx ttx;

personid|lastname|firstname|address |city   |
--------+--------+---------+--------+-------+
       1|trk     |ttl      |Hlavna 5|TNO    |
       2|doe     |jon      |CA      |GS     |
       3|ewong   |samatha  |SFR     |Dallas |
       6|kawhi   |leo      |canada  |toronto|
       4|bbking  |bbe      |hemp    |ams    |
       5|petofi  |alex     |var     |BP     |
       7|jockey  |brent    |still   |GER    |

drop table trk_test_xx;

select * from trk_test_xx ttx;

SQL Error [42P01]: ERROR: relation "trk_test_xx" does not exist
  Position: 15
```

---
