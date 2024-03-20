
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [DS](https://github.com/ttltrk/TTT/blob/master/SQL/DS/DS.md)

---

### 0736_CORR_SUB_CONTINUED

---

```sql
select department, first_name, salary,
		(select max(salary) from employees e2 where e1.department = e2.department) as max_by_department,
		(select min(salary) from employees e2 where e1.department = e2.department) as min_by_department
from employees e1
order by department
limit 10;
```

```
department|first_name|salary|max_by_department|min_by_department|
----------+----------+------+-----------------+-----------------+
Automotive|Ladonna   |111775|           162522|            29752|
Automotive|Lauretta  | 75978|           162522|            29752|
Automotive|Tammie    |160039|           162522|            29752|
Automotive|Lorelle   |119959|           162522|            29752|
Automotive|Jilleen   |137393|           162522|            29752|
Automotive|Irita     |160783|           162522|            29752|
Automotive|Roslyn    |157260|           162522|            29752|
Automotive|Vanda     |103570|           162522|            29752|
Automotive|Sterling  | 56095|           162522|            29752|
Automotive|Doe       |106046|           162522|            29752|
```

```sql
--dep, firstname, salary, lowest and highest sal

select
department,
first_name,
salary,
case when salary = max_by_department then 'HIGHEST SALARY'
	 when salary = min_by_department then 'LOWEST SALARY'
end as salary_in_department
from
	(select department, first_name, salary,
		(select max(salary) from employees e2 where e1.department = e2.department) as max_by_department,
		(select min(salary) from employees e2 where e1.department = e2.department) as min_by_department
	from employees e1
	order by department) a
where salary = max_by_department
   or salary = min_by_department
order by 1
limit 10;
```

```
department       |first_name|salary|salary_in_department|
-----------------|----------|------|--------------------|
Automotive       |Mill      |162522|HIGHEST SALARY      |
Automotive       |Laurie    | 29752|LOWEST SALARY       |
Beauty           |Orland    |162845|HIGHEST SALARY      |
Beauty           |Willabella| 22053|LOWEST SALARY       |
Books            |Sephira   |159561|HIGHEST SALARY      |
Books            |Chloris   | 41549|LOWEST SALARY       |
Camping          |Eugenia   | 26747|LOWEST SALARY       |
Camping          |Riley     |166569|HIGHEST SALARY      |
Children Clothing|Yancy     |158546|HIGHEST SALARY      |
Children Clothing|Timotheus | 23159|LOWEST SALARY       |
```
