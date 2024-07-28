
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

```sql
--first_name, email, department, division, country 

select * from employees;
employee_id|first_name  |last_name     |email                             |hire_date |department       |gender|salary|region_id|
-----------+------------+--------------+----------------------------------+----------+-----------------+------+------+---------+
          1|Berrie      |Manueau       |bmanueau0@dion.ne.jp              |2006-04-20|Sports           |F     |154864|        4|
          2|Aeriell     |McNee         |amcnee1@google.es                 |2009-01-26|Tools            |F     | 56752|        3|
          3|Sydney      |Symonds       |ssymonds2@hhs.gov                 |2010-05-17|Clothing         |F     | 95313|        4|
          4|Avrom       |Rowantree     |                                  |2014-08-02|Phones & Tablets |M     |119674|        7|
          5|Feliks      |Morffew       |fmorffew4@a8.net                  |2003-01-14|Computers        |M     | 55307|        5|
          6|Bethena     |Trow          |btrow5@technorati.com             |2003-06-08|Sports           |F     |134501|        3|
          7|Ardeen      |Curwood       |acurwood6@1und1.de                |2006-02-19|Clothing         |F     | 28995|        7|
          8|Seline      |Dubber        |sdubber7@t-online.de              |2012-05-28|Phones & Tablets |F     |101066|        3|
```

--- 

```sql
select * from departments;
department       |division     |
-----------------+-------------+
Clothing         |Home         |
Grocery          |Home         |
Decor            |Home         |
Furniture        |Home         |
Computers        |Electronics  |
Device Repair    |Electronics  |
Phones & Tablets |Electronics  |
```

```sql
select * from regions;
region_id|region     |country      |
---------+-----------+-------------+
        1|Southwest  |United States|
        2|Northeast  |United States|
        3|Northwest  |United States|
        4|Central    |Asia         |
        5|East Asia  |Asia         |
```

```sql
select first_name, email, e.department, division, country  
from employees e, departments d, regions r
where e.department = d.department
and e.region_id = r.region_id 
and email is not null
limit 10;

first_name|email                   |department      |division   |country      |
----------|------------------------|----------------|-----------|-------------|
Berrie    |bmanueau0@dion.ne.jp    |Sports          |Outdoors   |Asia         |
Aeriell   |amcnee1@google.es       |Tools           |Hardware   |United States|
Sydney    |ssymonds2@hhs.gov       |Clothing        |Home       |Asia         |
Feliks    |fmorffew4@a8.net        |Computers       |Electronics|Asia         |
Bethena   |btrow5@technorati.com   |Sports          |Outdoors   |United States|
Ardeen    |acurwood6@1und1.de      |Clothing        |Home       |Canada       |
Seline    |sdubber7@t-online.de    |Phones & Tablets|Electronics|United States|
Dayle     |dtrail8@tamu.edu        |First Aid       |Health     |United States|
Nickey    |npointona@vistaprint.com|Jewelry         |Fashion    |Canada       |
Leonora   |lcasarolib@plala.or.jp  |Beauty          |Fashion    |United States|
```

---

```sql
--country and count of employees

select country, count(employee_id)
from employees e, regions r
where e.region_id = r.region_id
group by country;

country      |count|
-------------|-----|
United States|  438|
Canada       |  298|
Asia         |  264|
```

---