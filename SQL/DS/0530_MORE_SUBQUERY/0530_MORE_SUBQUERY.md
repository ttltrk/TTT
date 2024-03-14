
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [DS](https://github.com/ttltrk/TTT/blob/master/SQL/DS/DS.md)

---

### 0530_MORE_SUBQUERY

---

```sql
select *
from dupes;
```

```
id|name  |
--+------+
 1|FRANK |
 2|FRANK |
 3|ROBERT|
 4|ROBERT|
 5|SAM   |
 6|FRANK |
 7|PETER |
```

```sql
select distinct id, name
from dupes
order by id asc;
```

```
id|name  |
--|------|
 1|FRANK |
 2|FRANK |
 3|ROBERT|
 4|ROBERT|
 5|SAM   |
 6|FRANK |
 7|PETER |
```

```sql
select *
from dupes
where id in (select min(id) from dupes group by name);
```

```
id|name  |
--|------|
 1|FRANK |
 3|ROBERT|
 5|SAM   |
 7|PETER |
```

---

```sql
--exclude the highest paid and the lowest paid from the emp and give back the average

select avg(salary) 
from employees;
```

```
avg               |
------------------|
91571.594000000000|
```

```sql
select max(salary), min(salary)
from employees;
```

```
max   |min  |
------|-----|
166976|20542|
```

```sql
select avg(salary)
from employees
where salary not in (
  (select max(salary) from employees),
  (select min(salary) from employees));
```

```
avg               |
------------------|
91567.210420841683|
```

---
