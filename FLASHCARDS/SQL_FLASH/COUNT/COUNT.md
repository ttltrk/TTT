
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md) - [SQL_FLASH](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SQL_FLASH.md) - COUNT

---

```sql
select * from trk_test_01;

personid|lastname|firstname|address  |city  |
--------+--------+---------+---------+------+
       1|Doe     |John     |Main str.|Norway|
       7|ray     |brent    |still    |GER   |
       2|tie     |whui     |and      |FRA   |

SELECT COUNT(*)
FROM trk_test_01
WHERE personid > 1;

count|
-----+
    2|
```
