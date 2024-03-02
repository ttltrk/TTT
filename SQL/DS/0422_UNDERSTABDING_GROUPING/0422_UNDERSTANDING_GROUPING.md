
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [DS](https://github.com/ttltrk/TTT/blob/master/SQL/DS/DS.md)

---

### 0422_UNDERSTANDING_GROUPING

---

```sql
select *
from cars
order by cars;
```

```
make  |
------+
HONDA |
HONDA |
HONDA |
NISSAN|
NULL  |
NULL  |
NULL  |
NULL  |
TOYOTA|
TOYOTA|
```

```sql
select count(*), make
from cars
group by make
order by count;
```

```
count|make  |
-----+------+
    1|NISSAN|
    2|TOYOTA|
    3|HONDA |
    4|NULL  |
```

---  
