
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [DS](https://github.com/ttltrk/TTT/blob/master/SQL/DS/DS.md)

---

### 0528_SUBQUERIES_CONTINUED

---

```sql
select *
from employees e
where e.department in (select department from departments d2)
limit 10;
```

```
employee_id|first_name|last_name|email               |hire_date |department      |gender|salary|region_id|
-----------|----------|---------|--------------------|----------|----------------|------|------|---------|
          1|Berrie    |Manueau  |bmanueau0@dion.ne.jp|2006-04-20|Sports          |F     |154864|        4|
          2|Aeriell   |McNee    |amcnee1@google.es   |2009-01-26|Tools           |F     | 56752|        3|
          3|Sydney    |Symonds  |ssymonds2@hhs.gov   |2010-05-17|Clothing        |F     | 95313|        4|
          4|Avrom     |Rowantree|                    |2014-08-02|Phones & Tablets|M     |119674|        7|
          5|Feliks    |Morffew  |fmorffew4@a8.net    |2003-01-14|Computers       |M     | 55307|        5|
```

---          

```sql          
select *
from (select department from departments d2) a
limit 10;
```

```
department|
----------|
Clothing  |
Grocery   |
Decor     |
Furniture |
Computers |
```

---
