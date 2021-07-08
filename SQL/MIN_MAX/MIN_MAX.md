
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### MIN_MAX

---

```
The MIN() function returns the smallest value of the selected column.
The MAX() function returns the largest value of the selected column.
```

---

* [MIN](#MIN)
* [MAX](#MAX)

---

#### MIN

```sql
SELECT systemid FROM trk_test_02;

>>>
systemid|
--------|
       1|
       2|
       3|
       4|
       5|
       6|
       7|
>>>

SELECT MIN(systemid) AS SmallestSysid FROM trk_test_02;

>>>
smallestsysid|
-------------|
            1|
>>>
```

[^^^](#MIN_MAX)

---

#### MAX

```sql
SELECT systemid FROM trk_test_02;

>>>
systemid|
--------|
       1|
       2|
       3|
       4|
       5|
       6|
       7|
>>>

SELECT MAX(systemid) AS LargestSysid FROM trk_test_02;

>>>
smallestsysid|
-------------|
            7|
>>>
```

[^^^](#MIN_MAX)

---

#### Grouping Functions MIN(), MAX(), AVG(), SUM(), COUNT()

```sql
select max(salary) from employees; --166976
select min(salary) from employees; --20542
select avg(salary) from employees; --91571.594000000000
select round(avg(salary)) from employees; --91572
select count(employee_id) from employees; --1000
select count(email) from employees; --796
select sum(salary) from employees; --91571594 >> this is the yearly budget :)
```

```sql
select sum(salary) from employees where department ='Clothing'; --4112739 >> total budget for Clothing
select sum(salary) from employees where department ='Toys'; --4846171 >> total budget for Toys
```

```sql
--budgets per departments from the "richest"
select department, sum(salary) budget from employees where 1=1 group by department order by budget desc;

>>>
department       |budget |
-----------------|-------|
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
Decor            |3617882|
>>>
```

[^^^](#MIN_MAX)

---
