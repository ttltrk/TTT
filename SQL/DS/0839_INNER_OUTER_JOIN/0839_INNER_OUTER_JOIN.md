
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [DS](https://github.com/ttltrk/TTT/blob/master/SQL/DS/DS.md)

---

### 0839_INNER_OUTER_JOIN

---


```sql
select first_name, country
from employees e, regions r 
where e.region_id = r.region_id
limit 10; 
```

```sql
select first_name, country
from employees e 
inner join regions r 
on e.region_id = r.region_id
limit 10;

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

```sql
select first_name, email, division
from employees e 
inner join departments d 
on e.department = d.department 
where email is not null
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
--joining 3 tables 
select first_name, email, division, country
from employees e 
	inner join departments d 
	on e.department = d.department 
	inner join regions r 
	on e.region_id = r.region_id 
where email is not null
limit 10;

first_name|email                   |division   |country      |
----------|------------------------|-----------|-------------|
Berrie    |bmanueau0@dion.ne.jp    |Outdoors   |Asia         |
Aeriell   |amcnee1@google.es       |Hardware   |United States|
Sydney    |ssymonds2@hhs.gov       |Home       |Asia         |
Feliks    |fmorffew4@a8.net        |Electronics|Asia         |
Bethena   |btrow5@technorati.com   |Outdoors   |United States|
Ardeen    |acurwood6@1und1.de      |Home       |Canada       |
Seline    |sdubber7@t-online.de    |Electronics|United States|
Dayle     |dtrail8@tamu.edu        |Health     |United States|
Nickey    |npointona@vistaprint.com|Fashion    |Canada       |
Leonora   |lcasarolib@plala.or.jp  |Fashion    |United States|
```

---

```sql
select count(distinct department) from employees;

count|
-----|
   27|
```

```sql   
select count(distinct department) from departments;   

count|
-----|
   24|
```

```sql   
select distinct employees.department, departments.department
from employees 
inner join departments 
on employees.department = departments.department;
--23 rows
```

```sql
select distinct employees.department, departments.department
from employees 
left join departments 
on employees.department = departments.department;
--27 rows
```

```sql
select distinct employees.department, departments.department
from employees 
right join departments 
on employees.department = departments.department;
--24rows
```

---

```sql
select distinct employees.department employees_department, 
                departments.department departments_department
from employees left join departments on employees.department = departments.department
limit 10;

employees_department|departments_department|
--------------------|----------------------|
Clothing            |Clothing              |
Vitamins            |Vitamins              |
Cosmetics           |Cosmetics             |
Books               |Books                 |
Sports              |Sports                |
Children Clothing   |Children Clothing     |
Plumbing            |                      |
Device Repair       |Device Repair         |
Furniture           |Furniture             |
Games               |Games                 |
```

---

```sql
select distinct employees.department employees_department, 
                departments.department departments_department
from employees right join departments on employees.department = departments.department
limit 10;

employees_department|departments_department|
--------------------|----------------------|
Clothing            |Clothing              |
Vitamins            |Vitamins              |
Cosmetics           |Cosmetics             |
                    |Camping & Fishing     |
Books               |Books                 |
Sports              |Sports                |
Children Clothing   |Children Clothing     |
Device Repair       |Device Repair         |
Furniture           |Furniture             |
Games               |Games                 |
```

---

```sql
--show only the departments which is is employees table but not in department table
select distinct employees.department employees_department, 
                departments.department departments_department
from employees left join departments on employees.department = departments.department
where departments.department is NULL
limit 10;

employees_department|departments_department|
--------------------|----------------------|
Camping             |                      |
Maintenance         |                      |
Plumbing            |                      |
Security            |                      |
```

---

```sql
select distinct employees.department employees_department, 
                departments.department departments_department
from employees full outer join departments on employees.department = departments.department;
--28
```

---