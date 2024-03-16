
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

```sql
select *
from regions;
```

```
region_id|region     |country      |
---------+-----------+-------------+
        1|Southwest  |United States|
        2|Northeast  |United States|
        3|Northwest  |United States|
        4|Central    |Asia         |
        5|East Asia  |Asia         |
        6|Quebec     |Canada       |
        7|Nova Scotia|Canada       |
```

```sql
select *
from employees
limit 10;
```

```
employee_id|first_name|last_name|email                |hire_date |department      |gender|salary|region_id|
-----------+----------+---------+---------------------+----------+----------------+------+------+---------+
          1|Berrie    |Manueau  |bmanueau0@dion.ne.jp |2006-04-20|Sports          |F     |154864|        4|
          2|Aeriell   |McNee    |amcnee1@google.es    |2009-01-26|Tools           |F     | 56752|        3|
          3|Sydney    |Symonds  |ssymonds2@hhs.gov    |2010-05-17|Clothing        |F     | 95313|        4|
          4|Avrom     |Rowantree|                     |2014-08-02|Phones & Tablets|M     |119674|        7|
          5|Feliks    |Morffew  |fmorffew4@a8.net     |2003-01-14|Computers       |M     | 55307|        5|
          6|Bethena   |Trow     |btrow5@technorati.com|2003-06-08|Sports          |F     |134501|        3|
          7|Ardeen    |Curwood  |acurwood6@1und1.de   |2006-02-19|Clothing        |F     | 28995|        7|
          8|Seline    |Dubber   |sdubber7@t-online.de |2012-05-28|Phones & Tablets|F     |101066|        3|
          9|Dayle     |Trail    |dtrail8@tamu.edu     |2003-03-01|First Aid       |F     | 82753|        1|
         10|Redford   |Roberti  |                     |2008-07-21|Clothing        |M     | 72225|        7|
```

```sql
-- count the employees from the different regions         

select
count(a.region_1) + count(a.region_2) + count(a.region_3) as US,
count(a.region_4) + count(a.region_5) as ASIA,
count(a.region_6) + count(a.region_7) as CANADA
from (
select first_name,
case when region_id = 1 then (select country from regions where region_id = 1) end region_1,
case when region_id = 2 then (select country from regions where region_id = 2) end region_2,
case when region_id = 3 then (select country from regions where region_id = 3) end region_3,
case when region_id = 4 then (select country from regions where region_id = 4) end region_4,
case when region_id = 5 then (select country from regions where region_id = 5) end region_5,
case when region_id = 6 then (select country from regions where region_id = 6) end region_6,
case when region_id = 7 then (select country from regions where region_id = 7) end region_7
from employees) a;
```

```
us |asia|canada|
---|----|------|
438| 264|   298|
```

---

```sql
select USA from (
select count(a.region_1) + count(a.region_2) + count(a.region_3) as USA,
count(a.region_4) + count(a.region_5) as ASIA,
count(a.region_6) + count(a.region_7) as CANADA
from (
select first_name,
case when region_id = 1 then (select country from regions where region_id = 1) end region_1,
case when region_id = 2 then (select country from regions where region_id = 2) end region_2,
case when region_id = 3 then (select country from regions where region_id = 3) end region_3,
case when region_id = 4 then (select country from regions where region_id = 4) end region_4,
case when region_id = 5 then (select country from regions where region_id = 5) end region_5,
case when region_id = 6 then (select country from regions where region_id = 6) end region_6,
case when region_id = 7 then (select country from regions where region_id = 7) end region_7
from employees) a
) b;
```

```
usa|
---+
438|
```

```sql
select ASIA from (
select count(a.region_1) + count(a.region_2) + count(a.region_3) as USA,
count(a.region_4) + count(a.region_5) as ASIA,
count(a.region_6) + count(a.region_7) as CANADA
from (
select first_name,
case when region_id = 1 then (select country from regions where region_id = 1) end region_1,
case when region_id = 2 then (select country from regions where region_id = 2) end region_2,
case when region_id = 3 then (select country from regions where region_id = 3) end region_3,
case when region_id = 4 then (select country from regions where region_id = 4) end region_4,
case when region_id = 5 then (select country from regions where region_id = 5) end region_5,
case when region_id = 6 then (select country from regions where region_id = 6) end region_6,
case when region_id = 7 then (select country from regions where region_id = 7) end region_7
from employees) a
) b;
```

```
asia|
----+
 264|
```

```sql
select CANADA from (
select count(a.region_1) + count(a.region_2) + count(a.region_3) as USA,
count(a.region_4) + count(a.region_5) as ASIA,
count(a.region_6) + count(a.region_7) as CANADA
from (
select first_name,
case when region_id = 1 then (select country from regions where region_id = 1) end region_1,
case when region_id = 2 then (select country from regions where region_id = 2) end region_2,
case when region_id = 3 then (select country from regions where region_id = 3) end region_3,
case when region_id = 4 then (select country from regions where region_id = 4) end region_4,
case when region_id = 5 then (select country from regions where region_id = 5) end region_5,
case when region_id = 6 then (select country from regions where region_id = 6) end region_6,
case when region_id = 7 then (select country from regions where region_id = 7) end region_7
from employees) a
) b;
```

```
canada|
------+
   298|
```

```sql
select USA + ASIA + CANADA as total
from (
select count(a.region_1) + count(a.region_2) + count(a.region_3) as USA,
count(a.region_4) + count(a.region_5) as ASIA,
count(a.region_6) + count(a.region_7) as CANADA
from (
select first_name,
case when region_id = 1 then (select country from regions where region_id = 1) end region_1,
case when region_id = 2 then (select country from regions where region_id = 2) end region_2,
case when region_id = 3 then (select country from regions where region_id = 3) end region_3,
case when region_id = 4 then (select country from regions where region_id = 4) end region_4,
case when region_id = 5 then (select country from regions where region_id = 5) end region_5,
case when region_id = 6 then (select country from regions where region_id = 6) end region_6,
case when region_id = 7 then (select country from regions where region_id = 7) end region_7
from employees) a
) b;
```

```
total|
-----+
 1000|     
```

---
