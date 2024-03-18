
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [DS](https://github.com/ttltrk/TTT/blob/master/SQL/DS/DS.md)

---

### 0735_ADVANCED_QUERY_TECH

---

---

```sql
select AVG(salary)
from employees;
```

```
avg               |
------------------|
91571.594000000000|
```

```sql
select round(AVG(salary))
from employees;
```

```
round|
-----|
91572|
```

---

```sql
select first_name, salary
from employees
where salary > (select round(AVG(salary)) from employees)
order by salary desc
limit 10;
```

```
first_name|salary|
----------+------+
Jacklyn   |166976|
Carissa   |166765|
Riley     |166569|
Lauren    |166016|
Lucy      |165660|
Barby     |164588|
Ev        |164582|
Sherwynd  |164470|
Michail   |164355|
Hermione  |164219|
```

```sql
--correlated sub-query
--same results as above

select first_name, salary
from employees e1
where salary > (select round(AVG(salary))
				from employees e2 where e1.department = e2.department)
order by salary desc
limit 10;
```

```			
first_name|salary|
----------+------+
Jacklyn   |166976|
Carissa   |166765|
Riley     |166569|
Lauren    |166016|
Lucy      |165660|
Barby     |164588|
Ev        |164582|
Sherwynd  |164470|
Michail   |164355|
Hermione  |164219|
```

```sql
select first_name, salary 
from employees e1
where salary > (select round(AVG(salary))
				from employees e2 where e1.region_id = e2.region_id)
order by salary desc
limit 10;
```

```			
first_name|salary|
----------+------+
Jacklyn   |166976|
Carissa   |166765|
Riley     |166569|
Lauren    |166016|
Lucy      |165660|
Barby     |164588|
Ev        |164582|
Sherwynd  |164470|
Michail   |164355|
Hermione  |164219|
```

---
