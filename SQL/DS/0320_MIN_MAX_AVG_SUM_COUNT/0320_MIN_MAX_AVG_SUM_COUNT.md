
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [DS](https://github.com/ttltrk/TTT/blob/master/SQL/DS/DS.md)

---

### 0320_MIN_MAX_AVG_SUM_COUNT

---

```sql
select max(salary)
from employees;
```

```
max   |
------+
166976|
```

---

```sql
select min(salary)
from employees;
```

```
min  |
-----+
20542|
```

---

```sql
select avg(salary)
from employees;
```

```
avg               |
------------------+
91571.594000000000|
```

---

```sql
select round(avg(salary))
from employees;
```

```
round|
-----+
91572|
```

---

```sql
select count(employee_id)
from employees;
```

```
count|
-----+
 1000|
```

---

```sql
select count(email)
from employees;
```

```
count|
-----+
  796|
```

---

```sql
select sum(salary)
from employees;
```

```
sum     |
--------+
91571594|
```

---

```sql
--4112739 >> total budget for Clothing
select sum(salary)
from employees
where department ='Clothing';
```

```
sum    |
-------+
4112739|
```

---

```sql
--4846171 >> total budget for Toys
select sum(salary)
from employees
where department ='Toys';
```

```
sum    |
-------+
4846171|
```

---

```sql
--budgets per departments from the "richest"
select department, sum(salary) budget
from employees
where 1=1
group by department
order by budget desc
limit 8;
```

```
department       |budget |
-----------------+-------+
First Aid        |5170963|
Movies           |4997798|
Toys             |4846171|
Computers        |4515035|
Device Repair    |4461517|
Beauty           |4341935|
Children Clothing|4113019|
Clothing         |4112739|
```

---
