
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

```sql
select first_name, last_name, salary, (select first_name from employees limit 1) a
from employees
limit 10;
```

```
first_name|last_name|salary|a     |
----------+---------+------+------+
Berrie    |Manueau  |154864|Berrie|
Aeriell   |McNee    | 56752|Berrie|
Sydney    |Symonds  | 95313|Berrie|
Avrom     |Rowantree|119674|Berrie|
Feliks    |Morffew  | 55307|Berrie|
Bethena   |Trow     |134501|Berrie|
Ardeen    |Curwood  | 28995|Berrie|
Seline    |Dubber   |101066|Berrie|
Dayle     |Trail    | 82753|Berrie|
Redford   |Roberti  | 72225|Berrie|
```

---
