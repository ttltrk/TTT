
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

```sql
select
	first_name,
	department,
	salary,
	(select round(AVG(salary)) from employees e2 where e1.department = e2.department) as avg_department_salary
from employees e1
order by avg_department_salary desc
limit 10;
```

```
first_name|department|salary|avg_department_salary|
----------+----------+------+---------------------+
Lorelle   |Automotive|119959|               111046|
Lauretta  |Automotive| 75978|               111046|
Tammie    |Automotive|160039|               111046|
Sterling  |Automotive| 56095|               111046|
Ladonna   |Automotive|111775|               111046|
Vanda     |Automotive|103570|               111046|
Irita     |Automotive|160783|               111046|
Jilleen   |Automotive|137393|               111046|
Roslyn    |Automotive|157260|               111046|
Doe       |Automotive|106046|               111046|
```

---

```sql
--return department where > 38 emp is working

select
	department,
	(select count(*) from employees where department = d.department) as all_employee
from departments d
where 38 < (select count(*) from employees e where e.department = d.department)
order by all_employee desc;
```

```
department       |all_employee|
-----------------+------------+
First Aid        |          58|
Movies           |          56|
Device Repair    |          51|
Clothing         |          49|
Computers        |          47|
Children Clothing|          47|
Toys             |          47|
Beauty           |          45|
Furniture        |          43|
Jewelry          |          41|
Garden           |          41|
Tools            |          39|
Decor            |          39|
```

---
