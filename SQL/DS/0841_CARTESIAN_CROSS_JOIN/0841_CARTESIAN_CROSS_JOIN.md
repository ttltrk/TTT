
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [DS](https://github.com/ttltrk/TTT/blob/master/SQL/DS/DS.md)

---

### 0841_CARTESIAN_CROSS_JOIN

---

```sql
select count(*) from employees;

count|
-----|
 1000|
```

```sql
select count(*) from departments; 

count|
-----|
   24|
```

```sql
--1000x24=24000   
select count(*) from (
select * from employees, departments
	) a;

count|
-----|
24000|
```

```sql
--1000x1000=1000000
select count(*) from (
select * from employees e, employees e2
	) a;

count  |
-------|
1000000|
```

```sql
--(1000X1000)X24=24000000
select count(*) from (
select * from employees e, employees e2, departments d2 
	) a;

count   |
--------|
24000000|
```

```sql
--1000x1000=1000000
select count(*) from (
select * from employees e cross join employees e2
	)a;

count  |
-------|
1000000|
```