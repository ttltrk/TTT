
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [DS](https://github.com/ttltrk/TTT/blob/master/SQL/DS/DS.md)

---

### 0423_GROUPBY_HAVING

---

```sql    
-- department salary pair first 10 rows

select department, salary
from employees
order by department
limit 10;
```

```
department|salary|
----------+------+
Automotive|111775|
Automotive| 75978|
Automotive|160039|
Automotive|119959|
Automotive|137393|
Automotive|160783|
Automotive|157260|
Automotive|103570|
Automotive| 56095|
Automotive|106046|
```

```sql
-- return the sum amount per department

select department, sum(salary)
from employees
where 1=1
group by department
order by sum(salary) desc
limit 10;
```

```
department       |sum    |
-----------------+-------+
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
```

---

```sql
-- department salary pair where region_id is in (4, 5, 6, 7) first 10 rows

select department, region_id, salary
from employees
where region_id in (4,5,6,7)
limit 10;
```

```
department      |region_id|salary|
----------------+---------+------+
Sports          |        4|154864|
Clothing        |        4| 95313|
Phones & Tablets|        7|119674|
Computers       |        5| 55307|
Clothing        |        7| 28995|
Clothing        |        7| 72225|
Jewelry         |        7|126333|
Furniture       |        6| 61256|
Movies          |        7| 78141|
Toys            |        5| 75283|
```

```sql
-- return the sum amount per department where region_id is in (4, 5, 6, 7) first 10 rows

select department, sum(salary)
from employees
where region_id in (4,5,6,7)
group by department
order by sum(salary) desc
limit 10;
```

```
department   |sum    |
-------------+-------+
Movies       |3065892|
Toys         |2915453|
Furniture    |2754459|
Computers    |2629856|
First Aid    |2598148|
Clothing     |2582568|
Device Repair|2280756|
Cosmetics    |2275778|
Camping      |2225814|
Games        |2219045|
```

---
