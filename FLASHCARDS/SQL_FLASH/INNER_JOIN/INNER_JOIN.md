
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md) - [SQL_FLASH](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SQL_FLASH.md) - INNER_JOIN

---

```sql
select * from trk_test_01;

personid|lastname|firstname|address  |city  |
--------+--------+---------+---------+------+
       1|Doe     |John     |Main str.|Norway|
       7|ray     |brent    |still    |GER   |
       2|tie     |whui     |and      |FRA   |
```

```sql
select * from trk;

personid|lastname|firstname|address  |city  |
--------+--------+---------+---------+------+
       1|Doe     |John     |Main str.|Norway|
       7|ray     |brent    |still    |GER   |
       2|tie     |whui     |and      |FRA   |
       2|ggg     |whueei   |anwwwed  |ITA   |
       2|mmm     |frty     |heyho    |USA   |
       7|xxx     |qaz      |edc      |CAN   |
```

```sql
select trk.personid, trk_test_01.lastname, trk.city
from trk
inner join trk_test_01
on trk.personid=trk_test_01.personid;

personid|lastname|city  |
--------+--------+------+
       1|Doe     |Norway|
       7|ray     |GER   |
       2|tie     |FRA   |
       2|tie     |ITA   |
       2|tie     |USA   |
       7|ray     |CAN   |
```

---
