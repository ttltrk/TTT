
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [DS](https://github.com/ttltrk/TTT/blob/master/SQL/DS/DS.md)

---

### 0840_UNION_ALL

---

```sql
--union is focusing on data types strin-string, int-int on both side can work

select count(distinct department) 
from employees;

count|
-----|
   27|
```

```sql
select count(department) 
from departments;

count|
-----|
   24|
```

---

```sql
--union removing all the duplicates 
select department
from employees
union
select department
from departments; 
--28
```

```sql
select department
from employees
union all
select department
from departments; 
--1024
```

---

```sql
select distinct department
from employees
union all
select department
from departments; 
-- 27+24=51
```

---

```sql
select distinct department
from employees
union 
select department
from departments
order by department
limit 10; 

department       |
-----------------|
Automotive       |
Beauty           |
Books            |
Camping          |
Camping & Fishing|
Children Clothing|
Clothing         |
Computers        |
Cosmetics        |
Decor            |
```

---

```sql
select distinct department
from employees
except 
select department
from departments;

department |
-----------|
Camping    |
Maintenance|
Plumbing   |
Security   |
```

---

```sql
--count for each departments

select department, count(*)
from employees
group by department
union all 
select 'TOTAL', count(*)
from employees;

department       |count|
-----------------|-----|
Pharmacy         |   38|
Children Clothing|   47|
Camping          |   36|
Games            |   36|
Beauty           |   45|
Computers        |   47|
Tools            |   39|
Maintenance      |    8|
Cosmetics        |   34|
Device Repair    |   51|
Furniture        |   43|
Vitamins         |   37|
Sports           |   34|
Plumbing         |    7|
Decor            |   39|
Books            |   37|
Clothing         |   49|
Music            |   29|
Jewelry          |   41|
Automotive       |   32|
Garden           |   41|
Toys             |   47|
Security         |    6|
Grocery          |   28|
Movies           |   56|
Phones & Tablets |   35|
First Aid        |   58|
TOTAL            | 1000|
```

---