
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [DS](https://github.com/ttltrk/TTT/blob/master/SQL/DS/DS.md)

---

### 0529_SUB_ANY_ALL

---

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
select *
from regions
limit 10;
```

```
region_id|region     |country      |
---------+-----------+-------------+
        1|Southwest  |United States|
        2|Northeast  |United States|
        3|Northwest  |United States|
        4|Central    |Asia         |
        5|East Asia  |Asia         |
        6|Quebec     |Canada       |
        7|Nova Scotia|Canada       |
```

```sql
select *
from employees
where region_id in
	(select region_id from regions where country = 'United States')
limit 10;
```

```
employee_id|first_name|last_name|email                 |hire_date |department      |gender|salary|region_id|
-----------|----------|---------|----------------------|----------|----------------|------|------|---------|
          2|Aeriell   |McNee    |amcnee1@google.es     |2009-01-26|Tools           |F     | 56752|        3|
          6|Bethena   |Trow     |btrow5@technorati.com |2003-06-08|Sports          |F     |134501|        3|
          8|Seline    |Dubber   |sdubber7@t-online.de  |2012-05-28|Phones & Tablets|F     |101066|        3|
          9|Dayle     |Trail    |dtrail8@tamu.edu      |2003-03-01|First Aid       |F     | 82753|        1|
         12|Leonora   |Casaroli |lcasarolib@plala.or.jp|2013-07-22|Beauty          |F     | 99504|        3|
```

---

```sql
select *
from employees
where region_id not in
	(select region_id from regions where country = 'United States')
limit 10;
```

```        
employee_id|first_name|last_name  |email                   |hire_date |department      |gender|salary|region_id|
-----------+----------+-----------+------------------------+----------+----------------+------+------+---------+
          1|Berrie    |Manueau    |bmanueau0@dion.ne.jp    |2006-04-20|Sports          |F     |154864|        4|
          3|Sydney    |Symonds    |ssymonds2@hhs.gov       |2010-05-17|Clothing        |F     | 95313|        4|
          4|Avrom     |Rowantree  |                        |2014-08-02|Phones & Tablets|M     |119674|        7|
          5|Feliks    |Morffew    |fmorffew4@a8.net        |2003-01-14|Computers       |M     | 55307|        5|
          7|Ardeen    |Curwood    |acurwood6@1und1.de      |2006-02-19|Clothing        |F     | 28995|        7|
         10|Redford   |Roberti    |                        |2008-07-21|Clothing        |M     | 72225|        7|
         11|Nickey    |Pointon    |npointona@vistaprint.com|2006-12-30|Jewelry         |M     |126333|        7|
         15|Alyson    |Franzonello|                        |2004-01-01|Furniture       |F     | 61256|        6|
         16|Merell    |Yakovliv   |myakovlivf@ucsd.edu     |2008-08-16|Movies          |M     | 78141|        7|
         17|Annora    |Bendelow   |abendelowg@google.com.hk|2009-06-12|Toys            |F     | 75283|        5|  
```

---         
