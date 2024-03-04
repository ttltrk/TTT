
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [DS](https://github.com/ttltrk/TTT/blob/master/SQL/DS/DS.md)

---

### 0526_ALIASING_SOURCE

---

```sql
select *
from employees
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
select first_name, last_name, email, *
from employees
limit 10;
```

```
first_name|last_name|email                |employee_id|first_name|last_name|email                |hire_date |department      |gender|salary|region_id|
----------+---------+---------------------+-----------+----------+---------+---------------------+----------+----------------+------+------+---------+
Berrie    |Manueau  |bmanueau0@dion.ne.jp |          1|Berrie    |Manueau  |bmanueau0@dion.ne.jp |2006-04-20|Sports          |F     |154864|        4|
Aeriell   |McNee    |amcnee1@google.es    |          2|Aeriell   |McNee    |amcnee1@google.es    |2009-01-26|Tools           |F     | 56752|        3|
Sydney    |Symonds  |ssymonds2@hhs.gov    |          3|Sydney    |Symonds  |ssymonds2@hhs.gov    |2010-05-17|Clothing        |F     | 95313|        4|
Avrom     |Rowantree|                     |          4|Avrom     |Rowantree|                     |2014-08-02|Phones & Tablets|M     |119674|        7|
Feliks    |Morffew  |fmorffew4@a8.net     |          5|Feliks    |Morffew  |fmorffew4@a8.net     |2003-01-14|Computers       |M     | 55307|        5|
Bethena   |Trow     |btrow5@technorati.com|          6|Bethena   |Trow     |btrow5@technorati.com|2003-06-08|Sports          |F     |134501|        3|
Ardeen    |Curwood  |acurwood6@1und1.de   |          7|Ardeen    |Curwood  |acurwood6@1und1.de   |2006-02-19|Clothing        |F     | 28995|        7|
Seline    |Dubber   |sdubber7@t-online.de |          8|Seline    |Dubber   |sdubber7@t-online.de |2012-05-28|Phones & Tablets|F     |101066|        3|
Dayle     |Trail    |dtrail8@tamu.edu     |          9|Dayle     |Trail    |dtrail8@tamu.edu     |2003-03-01|First Aid       |F     | 82753|        1|
Redford   |Roberti  |                     |         10|Redford   |Roberti  |                     |2008-07-21|Clothing        |M     | 72225|        7|
```

---

```sql
select
	e.employee_id,
	e.department as e_dep,
	d.department as d_dep
from employees e, departments d
limit 10;
```

```
employee_id|e_dep |d_dep            |
-----------+------+-----------------+
          1|Sports|Clothing         |
          1|Sports|Grocery          |
          1|Sports|Decor            |
          1|Sports|Furniture        |
          1|Sports|Computers        |
          1|Sports|Device Repair    |
          1|Sports|Phones & Tablets |
          1|Sports|Garden           |
          1|Sports|Camping & Fishing|
          1|Sports|Sports           |
```

---
