
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [DS](https://github.com/ttltrk/TTT/blob/master/SQL/DS/DS.md)

---

### 0842_JOIN_AND_SUB

---

```sql
--first_name, department, hire_date, country about the first/last employee which was hired to the company

select * from employees;

employee_id|first_name  |last_name     |email                             |hire_date |department       |gender|salary|region_id|
-----------|------------|--------------|----------------------------------|----------|-----------------|------|------|---------|
          1|Berrie      |Manueau       |bmanueau0@dion.ne.jp              |2006-04-20|Sports           |F     |154864|        4|
          2|Aeriell     |McNee         |amcnee1@google.es                 |2009-01-26|Tools            |F     | 56752|        3|
          3|Sydney      |Symonds       |ssymonds2@hhs.gov                 |2010-05-17|Clothing         |F     | 95313|        4|
          4|Avrom       |Rowantree     |                                  |2014-08-02|Phones & Tablets |M     |119674|        7|
```

```sql          
select * from departments;        

department       |division     |
-----------------|-------------|
Clothing         |Home         |
Grocery          |Home         |
Decor            |Home         |
Furniture        |Home         |
```

```sql
select * from regions;  

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
select first_name, department, hire_date, country
from employees e 
inner join regions r 
on e.region_id = r.region_id
where hire_date = (select min(hire_date) from employees e2)
union 
select first_name, department, hire_date, country
from employees e 
inner join regions r 
on e.region_id = r.region_id
where hire_date = (select max(hire_date) from employees e2);

first_name|department|hire_date |country|
----------|----------|----------|-------|
Barby     |Clothing  |2016-12-26|Canada |
Cassandra |Beauty    |2003-01-01|Canada |
Norbie    |First Aid |2003-01-01|Canada |
```

---

```sql
(select first_name, department, hire_date, country
from employees e inner join regions r 
on e.region_id = r.region_id
where hire_date = (select min(hire_date) from employees e2)
limit 1)
union 
select first_name, department, hire_date, country
from employees e inner join regions r 
on e.region_id = r.region_id
where hire_date = (select max(hire_date) from employees e2);

first_name|department|hire_date |country|
----------|----------|----------|-------|
Barby     |Clothing  |2016-12-26|Canada |
Norbie    |First Aid |2003-01-01|Canada |
```

---

```sql
--show the sum of the salary of every 90 days

select first_name, hire_date - 90 hire_date_min_90, hire_date, hire_date + 90 hire_date_plus_90
from employees
limit 10;

first_name|hire_date_min_90|hire_date |hire_date_plus_90|
----------|----------------|----------|-----------------|
Berrie    |      2006-01-20|2006-04-20|       2006-07-19|
Aeriell   |      2008-10-28|2009-01-26|       2009-04-26|
Sydney    |      2010-02-16|2010-05-17|       2010-08-15|
Avrom     |      2014-05-04|2014-08-02|       2014-10-31|
Feliks    |      2002-10-16|2003-01-14|       2003-04-14|
Bethena   |      2003-03-10|2003-06-08|       2003-09-06|
Ardeen    |      2005-11-21|2006-02-19|       2006-05-20|
Seline    |      2012-02-28|2012-05-28|       2012-08-26|
Dayle     |      2002-12-01|2003-03-01|       2003-05-30|
Redford   |      2008-04-22|2008-07-21|       2008-10-19|
```

---

```sql
select hire_date, salary, 
(select sum(salary) from employees e2
 where e2.hire_date between e.hire_date - 90 and e.hire_date) as spending_pattern
from employees e
order by hire_date
limit 10;

hire_date |salary|spending_pattern|
----------|------|----------------|
2003-01-01|106936|          189151|
2003-01-01| 82215|          189151|
2003-01-12|153489|          342640|
2003-01-14| 55307|          397947|
2003-01-20| 98882|          496829|
2003-01-26|152118|          648947|
2003-02-17| 51266|          700213|
2003-02-22| 34355|          734568|
2003-02-24| 57309|          791877|
2003-02-27| 46062|          837939|
```

---