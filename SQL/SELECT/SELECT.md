
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### SELECT

---

```
The SELECT statement is used to select data from a database.
The data returned is stored in a result table, called the result-set.
```

---

* [BASICS](#BASICS)
* [SELECT_FROM_SELECT](#SELECT_FROM_SELECT)

---

#### BASICS

```sql
SELECT * FROM trk_test_01;

>>>
personid|lastname|firstname|address |city   |
--------|--------|---------|--------|-------|
       1|trk     |ttl      |Hlavna 5|TNO    |
       2|doe     |jon      |CA      |GS     |
       3|ewong   |samatha  |SFR     |Dallas |
       6|kawhi   |leo      |canada  |toronto|
       4|bbking  |bbe      |hemp    |ams    |
       5|petofi  |alex     |var     |BP     |
>>>
```

```sql
SELECT * FROM trk_test_02;

>>>
systemid|dep       |city|
--------|----------|----|
       1|ITOPS     |BA  |
       2|DEVOPS    |BP  |
       3|HR        |SF  |
       4|MANAGEMENT|LA  |
       5|ITOPS     |BP  |
       6|ITOPS     |LN  |
       7|DEVOPS    |NYC |
>>>
```

```sql
SELECT personid, lastname FROM trk_test_01;

>>>
personid|lastname|
--------|--------|
       1|trk     |
       2|doe     |
       3|ewong   |
       6|kawhi   |
       4|bbking  |
       5|petofi  |
>>>
```

[^^^](#SELECT)

---

#### SELECT_FROM_SELECT

```sql
SELECT lastname FROM (SELECT * FROM trk_test_01) AS lname; --select from select

>>>
lastname|
--------|
trk     |
doe     |
ewong   |
kawhi   |
bbking  |
petofi  |
>>>
```

[^^^](#SELECT)

---

#### Introducing to SELECT

```sql
select * from departments;
select count(*) from departments;
```

```sql
select * from regions;
select count(*) from regions;
```

```sql
select * from employees;
select count(*) from employees;
```

```sql
select employee_id, first_name, department from employees;

select * from employees where department = 'Furniture';
select * from employees where department = 'Sports';
select count(*) from employees where department = 'Sports';
```

```sql
select * from employees where department like '%nitu%';
select * from employees where department like 'F%nitu%';
select * from employees where department like 'F%';
```

```sql
select * from employees where salary > 100000;
select count(*) from employees where salary >= 100000;
select count(*) from employees where salary <= 100000;
```

#### Filter data using WHERE + AND & OR

```sql
select * from employees where 1 = 1; -- true
select * from employees where 1 < 1; -- false
```

```sql
select count(*) from employees where salary < 100000; -- 581
select count(*) from employees where salary > 200000; -- 0
```

```sql
select * from employees where department = 'Clothing';
select * from employees where department = 'Clothing' and salary > 90000;
select * from employees where department = 'Clothing' and salary > 90000 and region_id = 2;
```

```sql
select count(*) from employees where department = 'Clothing' and salary > 90000; --16
select count(*) from employees where department = 'Clothing' or salary > 90000; --529
```

```sql
select * from employees where salary < 90000 and (department = 'Clothing' or department = 'Pharmacy');
select count(*) from employees where salary < 90000 and (department = 'Clothing' or department = 'Pharmacy'); -- 53
select count(*) from employees where salary < 90000 and department = 'Clothing' or department = 'Pharmacy'; -- 71
```

```sql
select count(*) from employees where department = 'Sports' and department = 'Tools'; -- 0
select count(*) from employees where department = 'Sports' or department = 'Tools'; -- 73
```

#### Filtering operators IN, NOT IN, IS NULL, BETWEEN

```sql
select * from employees where not department = 'Sports'; --everything what is not in Sports dep.
select * from employees where department != 'Sports'; --everything what is not in Sports dep. (same as above)
select * from employees where department <> 'Sports'; --everything what is not in Sports dep. (same as above)
```

```sql
--NULL never equal to NULL
select * from employees where email = null; --empty output (wrong search)
select * from employees where email IS null; -- you can find the null values in email
select * from employees where not email IS null; -- everything where is not null
select * from employees where email is not null; -- everything where is not null (same as above)
```

```sql
--IN
select * from employees where department = 'Sports' or department = 'First Aid' or department ='Toys';
select * from employees where department IN ('Sports','First Aid','Toys'); -- same as above
```

```sql
--BETWEEN
select * from employees where salary between 80000 and 100000; --find the hits between 80000 and 100000
```

#### WHERE clause and operators

```sql
select first_name, email from employees where gender = 'F' and department ='Tools' and salary > 110000;
```

```sql
select first_name, hire_date from employees where salary > 165000 or (department ='Sports' and gender ='M');
```

```sql
select first_name, hire_date from employees where hire_date between '2002-01-01' and '2004-01-01';
```

```sql
select * from employees where department = 'Automotive' and salary between 40000 and 100000 and gender ='M' or (gender ='F' and department ='Toys');
```

#### Using ORDER BY, LIMIT, DISTINCT and Renaming columns

```sql
--ORDER BY
select * from employees order by employee_id;
select * from employees order by employee_id desc; --reverse order

select * from employees order by department; --abc sorting
select * from employees order by department desc; --reverse abc sorting
```

```sql
select department, first_name, email from employees order by 2;
select distinct department from employees order by 1;
select count(distinct department) from employees; --27
```

```sql
--limit fetch first
select distinct department from employees order by 1 limit 10;
select distinct department from employees order by 1 fetch first 10 rows only;
```

```sql
--as
select distinct department as sorted_dep from employees order by 1 fetch first 10 rows only;
select first_name, last_name, department, salary as "Yearly Salary" from employees;
```

[^^^](#SELECT)

---
