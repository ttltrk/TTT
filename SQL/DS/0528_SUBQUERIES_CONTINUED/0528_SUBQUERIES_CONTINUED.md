
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

```sql
select *
from departments
where division = 'Electronics'
limit 10;
```

```
department      |division   |
----------------+-----------+
Computers       |Electronics|
Device Repair   |Electronics|
Phones & Tablets|Electronics|
```

```sql
select *
from employees e
limit 10;
```

```
employee_id|first_name|last_name|email                |hire_date |department      |gender|salary|region_id|
-----------+----------+---------+---------------------+----------+----------------+------+------+---------+
          1|Berrie    |Manueau  |bmanueau0@dion.ne.jp |2006-04-20|Sports          |F     |154864|        4|
          2|Aeriell   |McNee    |amcnee1@google.es    |2009-01-26|Tools           |F     | 56752|        3|
          3|Sydney    |Symonds  |ssymonds2@hhs.gov    |2010-05-17|Clothing        |F     | 95313|        4|
          4|Avrom     |Rowantree|                     |2014-08-02|Phones & Tablets|M     |119674|        7|
          5|Feliks    |Morffew  |fmorffew4@a8.net     |2003-01-14|Computers       |M     | 55307|        5|
          6|Bethena   |Trow     |btrow5@technorati.com|2003-06-08|Sports          |F     |134501|        3|
          7|Ardeen    |Curwood  |acurwood6@1und1.de   |2006-02-19|Clothing        |F     | 28995|        7|
          8|Seline    |Dubber   |sdubber7@t-online.de |2012-05-28|Phones & Tablets|F     |101066|        3|
          9|Dayle     |Trail    |dtrail8@tamu.edu     |2003-03-01|First Aid       |F     | 82753|        1|
         10|Redford   |Roberti  |                     |2008-07-21|Clothing        |M     | 72225|        7|
```

```sql
-- find all the employees from the division electronics

select *
from employees
where department in (select department from departments where division = 'Electronics')
limit 10;
```

```
employee_id|first_name|last_name|email                     |hire_date |department      |gender|salary|region_id|
-----------+----------+---------+--------------------------+----------+----------------+------+------+---------+
          4|Avrom     |Rowantree|                          |2014-08-02|Phones & Tablets|M     |119674|        7|
          5|Feliks    |Morffew  |fmorffew4@a8.net          |2003-01-14|Computers       |M     | 55307|        5|
          8|Seline    |Dubber   |sdubber7@t-online.de      |2012-05-28|Phones & Tablets|F     |101066|        3|
         19|Bernardine|Hendricks|bhendricksi@privacy.gov.au|2006-02-04|Device Repair   |F     |158268|        3|
         20|Jessey    |Colum    |jcolumj@pen.io            |2013-07-08|Computers       |M     | 77173|        7|
         33|Ernestine |Sloley   |esloleyw@rakuten.co.jp    |2011-06-27|Device Repair   |F     |146549|        5|
         36|Anatollo  |Doyle    |                          |2016-04-08|Computers       |M     | 98207|        1|
         44|Moise     |Turpey   |mturpey17@mac.com         |2008-04-15|Device Repair   |M     | 33781|        1|
         46|Lanny     |Comolli  |lcomolli19@posterous.com  |2014-06-19|Phones & Tablets|F     | 34250|        6|
         49|Portie    |Ilden    |pilden1c@usa.gov          |2006-01-20|Device Repair   |M     | 69190|        7|
```

---         
