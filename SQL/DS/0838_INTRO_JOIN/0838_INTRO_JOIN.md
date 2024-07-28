
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

```sql
--first_name, email, division

select first_name, email, division 
from employees, departments
where employees.department = departments.department
and email is not null
limit 10;

first_name|email                   |division   |
----------|------------------------|-----------|
Berrie    |bmanueau0@dion.ne.jp    |Outdoors   |
Aeriell   |amcnee1@google.es       |Hardware   |
Sydney    |ssymonds2@hhs.gov       |Home       |
Feliks    |fmorffew4@a8.net        |Electronics|
Bethena   |btrow5@technorati.com   |Outdoors   |
Ardeen    |acurwood6@1und1.de      |Home       |
Seline    |sdubber7@t-online.de    |Electronics|
Dayle     |dtrail8@tamu.edu        |Health     |
Nickey    |npointona@vistaprint.com|Fashion    |
Leonora   |lcasarolib@plala.or.jp  |Fashion    |
```

---