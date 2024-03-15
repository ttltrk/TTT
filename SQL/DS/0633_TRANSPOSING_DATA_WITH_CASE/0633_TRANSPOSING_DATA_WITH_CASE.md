
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [DS](https://github.com/ttltrk/TTT/blob/master/SQL/DS/DS.md)

---

### 0633_TRANSPOSING_DATA_WITH_CASE

---

```sql       
select department, count(*)
from employees
where department in ('Sports', 'Tools', 'Clothing', 'Computers')
group by department
order by count desc;
```

```       
department|count|
----------|-----|
Tools     |   39|
Sports    |   34|
Clothing  |   49|
Computers |   47|
```

```sql
select sum(case when department = 'Sports' then 1 else 0 end) as sports_employees,
sum(case when department = 'Tools' then 1 else 0 end) as Tools_employees,
sum(case when department = 'Clothing' then 1 else 0 end) as Clothing_employees,
sum(case when department = 'Computers' then 1 else 0 end) as Computers_employees
from employees;
```

```
sports_employees|tools_employees|clothing_employees|computers_employees|
----------------|---------------|------------------|-------------------|
              34|             39|                49|                 47|
```
              
---              
