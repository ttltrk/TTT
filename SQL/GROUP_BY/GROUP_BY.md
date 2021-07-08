
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

#### GROUP_BY

---

* []()

---

#### GROUP_BY_AND_HAVING

```sql
select department, sum(salary) from employees where 1=1 group by department limit 5;

>>>
department       |sum    |
-----------------|-------|
Pharmacy         |3548141|
Children Clothing|4113019|
Camping          |3502873|
Games            |3084644|
Beauty           |4341935|
>>>
```

```sql
select department, sum(salary) from employees where region_id in (4,5,6,7) group by department limit 5;

>>>   
department       |sum    |
-----------------|-------|
Pharmacy         |2158089|
Children Clothing|2199206|
Camping          |2225814|
Games            |2219045|
Beauty           |1903217|   
>>>
```

```sql
select department, count(employee_id) from employees where 1=1 group by department order by count desc limit 5;

>>>
department   |count|
-------------|-----|
First Aid    |   58|
Movies       |   56|
Device Repair|   51|
Clothing     |   49|
Computers    |   47|
>>>
```

```sql
select department, count(*) total_number_employees, round(avg(salary)) avg_sal, min(salary) min_sal, max(salary) max_sal
from employees
where 1=1
group by department
order by total_number_employees desc
limit 5;

>>>
department   |total_number_employees|avg_sal|min_sal|max_sal|
-------------|----------------------|-------|-------|-------|
First Aid    |                    58|  89155|  29539| 164011|
Movies       |                    56|  89246|  25840| 159463|
Device Repair|                    51|  87481|  20664| 164355|
Clothing     |                    49|  83933|  28995| 166976|
Computers    |                    47|  96065|  21626| 163512|
>>>
```

```sql
select department, count(*) total_number_employees, round(avg(salary)) avg_sal, min(salary) min_sal, max(salary) max_sal
from employees
where salary > 70000
group by department
order by total_number_employees desc
limit 5;

>>>
department       |total_number_employees|avg_sal|min_sal|max_sal|
-----------------|----------------------|-------|-------|-------|
Movies           |                    38| 112859|  70928| 159463|
Toys             |                    38| 114964|  71923| 163688|
First Aid        |                    34| 119792|  70260| 164011|
Computers        |                    34| 117100|  74771| 163512|
Children Clothing|                    32| 107787|  72041| 158546|
>>>
```

```sql
select department, gender, count(*)
from employees
group by department, gender
order by department
limit 10;

>>>
department       |gender|count|
-----------------|------|-----|
Automotive       |M     |    9|
Automotive       |F     |   23|
Beauty           |M     |   27|
Beauty           |F     |   18|
Books            |M     |   17|
Books            |F     |   20|
Camping          |M     |   18|
Camping          |F     |   18|
Children Clothing|F     |   21|
Children Clothing|M     |   26|
>>>
```

```sql
--HAVING
-- give the departments were are working less then 35 people
select department, count(*)
from employees
group by department
having count(*) < 35
order by count desc;

>>>
department |count|
-----------|-----|
Cosmetics  |   34|
Sports     |   34|
Automotive |   32|
Music      |   29|
Grocery    |   28|
Maintenance|    8|
Plumbing   |    7|
Security   |    6|
>>>
```

#### Using GROUP BY and HAVING

```sql
--how many people have the same first name in the company
select first_name, count(*)
from employees
group by first_name
having count(*) > 1
order by count desc
limit 10;

>>>
first_name|count|
----------|-----|
Billie    |    3|
Roslyn    |    3|
Akim      |    2|
Cal       |    2|
Willard   |    2|
Del       |    2|
Stefano   |    2|
Alverta   |    2|
Alfons    |    2|
Jania     |    2|
>>>
```

```sql
--find the unique departments, but don't use distinct
select department from employees;
select count(department) from employees; --1000
select count(distinct(department)) from employees; --27 (don't use it)
```

```sql
--same as above
select department
from employees
group by department
order by department;
```

```sql
--find how many domains are in the list per providers
select substring(email, position('@' in email) +1) mail_domain, count(*)
from employees
where email is not NULL
group by substring(email, position('@' in email) +1)
order by count(*) desc
limit 5;

>>>
mail_domain   |count|
--------------|-----|
dion.ne.jp    |    7|
netvibes.com  |    6|
webmd.com     |    5|
soundcloud.com|    5|
technorati.com|    5|
>>>
```

```sql
--find the salary statistics (min, max, avg) in the separate regions per gender
select gender, region_id, min(salary) min_sal, max(salary) max_sal, round(avg(salary)) avg_sal
from employees
group by gender, region_id
order by gender, region_id
limit 10;

>>>
gender|region_id|min_sal|max_sal|avg_sal|
------|---------|-------|-------|-------|
F     |        1|  21024| 163361|  86087|
F     |        2|  21931| 166765|  91431|
F     |        3|  24614| 158268|  91831|
F     |        4|  25037| 166976|  90030|
F     |        5|  20613| 161532|  91242|
F     |        6|  20776| 164588|  90435|
F     |        7|  23582| 166016|  97803|
M     |        1|  25602| 157861|  93855|
M     |        2|  21735| 163794|  95498|
M     |        3|  21626| 164470|  94328|
>>>
```

[^^^](#GROUP_BY)

---
