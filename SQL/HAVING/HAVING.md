
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### HAVING

---

```
The HAVING clause was added to SQL because the WHERE keyword could not be used with aggregate functions.
```

---

* [BASICS](#BASICS)


---

#### BASICS

```sql
SELECT COUNT(systemid), dep
FROM trk_test_02
GROUP BY dep
HAVING COUNT(systemid) >= 2;

>>>
count|dep   |
-----|------|
    2|DEVOPS|
    3|ITOPS |

>>>
```

[^^^](#HAVING)

---

#### HAVING

```sql
-- give the departments were are working less then 35 people
select department, count(*)
from employees
group by department
having count(*) < 35
order by count desc;

>>>
department |count|
-----------|-----|
Cosmetics  |   34|
Sports     |   34|
Automotive |   32|
Music      |   29|
Grocery    |   28|
Maintenance|    8|
Plumbing   |    7|
Security   |    6|
>>>
```

[^^^](#HAVING)

---
