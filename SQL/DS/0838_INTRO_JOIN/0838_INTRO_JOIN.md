
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [DS](https://github.com/ttltrk/TTT/blob/master/SQL/DS/DS.md)

---

### 0838_INTRO_JOIN

---

```sql
select distinct(region_id)
from employees
order by region_id;
```

```
region_id|
---------|
        1|
        2|
        3|
        4|
        5|
        6|
        7|
```

```sql
select region_id
from regions;
```

```
region_id|
---------|
        1|
        2|
        3|
        4|
        5|
        6|
        7|
```

```sql
select first_name, country
from employees, regions
where employees.region_id = regions.region_id
limit 10;
```

```
first_name|country      |
----------|-------------|
Berrie    |Asia         |
Aeriell   |United States|
Sydney    |Asia         |
Avrom     |Canada       |
Feliks    |Asia         |
Bethena   |United States|
Ardeen    |Canada       |
Seline    |United States|
Dayle     |United States|
Redford   |Canada       |
```

---
