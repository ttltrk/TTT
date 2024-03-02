
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [DS](https://github.com/ttltrk/TTT/blob/master/SQL/DS/DS.md)

---

### 0423_GROUPBY_HAVING

---

```sql
-- each employee with dep-sal-region limit 10

select employee_id, department, salary, region_id
from employees
order by department
limit 10;
```

```
employee_id|department|salary|region_id|
-----------+----------+------+---------+
        305|Automotive|111775|        2|
        367|Automotive| 75978|        6|
        247|Automotive|160039|        5|
        274|Automotive|119959|        7|
         97|Automotive|137393|        3|
         90|Automotive|160783|        1|
        126|Automotive|157260|        1|
         23|Automotive|103570|        4|
        249|Automotive| 56095|        7|
        385|Automotive|106046|        1|
```

```sql
-- return the sum amount per department

select department, sum(salary)
from employees
where 1=1
group by department
order by sum(salary) desc
limit 10;
```

```
department       |sum    |
-----------------+-------+
First Aid        |5170963|
Movies           |4997798|
Toys             |4846171|
Computers        |4515035|
Device Repair    |4461517|
Beauty           |4341935|
Children Clothing|4113019|
Clothing         |4112739|
Furniture        |3757056|
Cosmetics        |3684978|
```

---

```sql
-- department salary pair where region_id is in (4, 5, 6, 7) first 10 rows

select department, region_id, salary
from employees
where region_id in (4,5,6,7)
limit 10;
```

```
department      |region_id|salary|
----------------+---------+------+
Sports          |        4|154864|
Clothing        |        4| 95313|
Phones & Tablets|        7|119674|
Computers       |        5| 55307|
Clothing        |        7| 28995|
Clothing        |        7| 72225|
Jewelry         |        7|126333|
Furniture       |        6| 61256|
Movies          |        7| 78141|
Toys            |        5| 75283|
```

```sql
-- return the sum amount per department where region_id is in (4, 5, 6, 7) first 10 rows

select department, sum(salary)
from employees
where region_id in (4,5,6,7)
group by department
order by sum(salary) desc
limit 10;
```

```
department   |sum    |
-------------+-------+
Movies       |3065892|
Toys         |2915453|
Furniture    |2754459|
Computers    |2629856|
First Aid    |2598148|
Clothing     |2582568|
Device Repair|2280756|
Cosmetics    |2275778|
Camping      |2225814|
Games        |2219045|
```

---

```sql
-- count the employees in dep = First Aid

select count(employee_id)
from employees
where department = 'First Aid';
```

```
count|
-----+
   58|
```

```sql
-- count the employees in every department   

select department, count(employee_id)
from employees
where 1=1
group by department
order by count desc
limit 10;
```

```
department       |count|
-----------------+-----+
First Aid        |   58|
Movies           |   56|
Device Repair    |   51|
Clothing         |   49|
Computers        |   47|
Toys             |   47|
Children Clothing|   47|
Beauty           |   45|
Furniture        |   43|
Jewelry          |   41|
```

---

```sql
select department, count(*) total_number_employees, round(avg(salary)) avg_sal, min(salary) min_sal, max(salary) max_sal
from employees
where 1=1
group by department
order by total_number_employees desc
limit 10;
```

```
department       |total_number_employees|avg_sal|min_sal|max_sal|
-----------------+----------------------+-------+-------+-------+
First Aid        |                    58|  89155|  29539| 164011|
Movies           |                    56|  89246|  25840| 159463|
Device Repair    |                    51|  87481|  20664| 164355|
Clothing         |                    49|  83933|  28995| 166976|
Computers        |                    47|  96065|  21626| 163512|
Toys             |                    47| 103110|  27578| 163688|
Children Clothing|                    47|  87511|  23159| 158546|
Beauty           |                    45|  96487|  22053| 162845|
Furniture        |                    43|  87373|  25602| 160170|
Jewelry          |                    41|  80576|  26876| 163794|
```

---

```sql
-- return total_number_employees, avg_sal, min_sal, max_sal per department where salary > 70000

select department, count(*) total_number_employees, round(avg(salary)) avg_sal, min(salary) min_sal, max(salary) max_sal
from employees
where salary > 70000
group by department
order by total_number_employees desc
limit 10;
```

```
department       |total_number_employees|avg_sal|min_sal|max_sal|
-----------------+----------------------+-------+-------+-------+
Movies           |                    38| 112859|  70928| 159463|
Toys             |                    38| 114964|  71923| 163688|
Computers        |                    34| 117100|  74771| 163512|
First Aid        |                    34| 119792|  70260| 164011|
Beauty           |                    32| 116254|  71278| 162845|
Children Clothing|                    32| 107787|  72041| 158546|
Device Repair    |                    29| 122718|  74721| 164355|
Clothing         |                    28| 110026|  72225| 166976|
Furniture        |                    28| 110414|  70680| 160170|
Cosmetics        |                    28| 121534|  84573| 162454|
```

---

```sql
-- return male and female workers per department

select department, gender, count(*)
from employees
group by department, gender
order by department
limit 10;
```

```
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
```

---

```sql
--HAVING
-- give the departments were are working less then 35 people

select department, count(*)
from employees
group by department
having count(*) < 35
order by count desc;
```

```
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
```

---
