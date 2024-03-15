
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [DS](https://github.com/ttltrk/TTT/blob/master/SQL/DS/DS.md)

---

### 0633_TRANSPOSING_DATA_WITH_CASE

---

```sql       
select department, count(*)
from employees
where department in ('Sports', 'Tools', 'Clothing', 'Computers')
group by department
order by count desc;
```

```       
department|count|
----------|-----|
Tools     |   39|
Sports    |   34|
Clothing  |   49|
Computers |   47|
```

```sql
select sum(case when department = 'Sports' then 1 else 0 end) as sports_employees,
sum(case when department = 'Tools' then 1 else 0 end) as Tools_employees,
sum(case when department = 'Clothing' then 1 else 0 end) as Clothing_employees,
sum(case when department = 'Computers' then 1 else 0 end) as Computers_employees
from employees;
```

```
sports_employees|tools_employees|clothing_employees|computers_employees|
----------------|---------------|------------------|-------------------|
              34|             39|                49|                 47|
```

---         

```sql              
select *
from regions;              
```

```
region_id|region     |country      |
---------|-----------|-------------|
        1|Southwest  |United States|
        2|Northeast  |United States|
        3|Northwest  |United States|
        4|Central    |Asia         |
        5|East Asia  |Asia         |
        6|Quebec     |Canada       |
        7|Nova Scotia|Canada       |
```

```sql        
select first_name,
case when region_id = 1 then (select country from regions where region_id = 1) end region_1,
case when region_id = 2 then (select country from regions where region_id = 2) end region_2,
case when region_id = 3 then (select country from regions where region_id = 3) end region_3,
case when region_id = 4 then (select country from regions where region_id = 4) end region_4,
case when region_id = 5 then (select country from regions where region_id = 5) end region_5,
case when region_id = 6 then (select country from regions where region_id = 6) end region_6,
case when region_id = 7 then (select country from regions where region_id = 7) end region_7
from employees
limit 10;
```

```
first_name|region_1     |region_2|region_3     |region_4|region_5|region_6|region_7|
----------+-------------+--------+-------------+--------+--------+--------+--------+
Berrie    |             |        |             |Asia    |        |        |        |
Aeriell   |             |        |United States|        |        |        |        |
Sydney    |             |        |             |Asia    |        |        |        |
Avrom     |             |        |             |        |        |        |Canada  |
Feliks    |             |        |             |        |Asia    |        |        |
Bethena   |             |        |United States|        |        |        |        |
Ardeen    |             |        |             |        |        |        |Canada  |
Seline    |             |        |United States|        |        |        |        |
Dayle     |United States|        |             |        |        |        |        |
Redford   |             |        |             |        |        |        |Canada  |
```

---        
