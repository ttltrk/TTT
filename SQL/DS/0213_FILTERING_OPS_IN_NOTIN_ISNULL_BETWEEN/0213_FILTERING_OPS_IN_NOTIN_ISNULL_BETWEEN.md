
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [DS](https://github.com/ttltrk/TTT/blob/master/SQL/DS/DS.md)

---

### 0213_FILTERING_OPS_IN_NOTIN_ISNULL_BETWEEN

---

```sql
--everything what is not in Sports dep.   
select *
from employees
where not department = 'Sports'
limit 8;
```

```
employee_id|first_name|last_name|email               |hire_date |department      |gender|salary|region_id|
-----------+----------+---------+--------------------+----------+----------------+------+------+---------+
          2|Aeriell   |McNee    |amcnee1@google.es   |2009-01-26|Tools           |F     | 56752|        3|
          3|Sydney    |Symonds  |ssymonds2@hhs.gov   |2010-05-17|Clothing        |F     | 95313|        4|
          4|Avrom     |Rowantree|                    |2014-08-02|Phones & Tablets|M     |119674|        7|
          5|Feliks    |Morffew  |fmorffew4@a8.net    |2003-01-14|Computers       |M     | 55307|        5|
          7|Ardeen    |Curwood  |acurwood6@1und1.de  |2006-02-19|Clothing        |F     | 28995|        7|
          8|Seline    |Dubber   |sdubber7@t-online.de|2012-05-28|Phones & Tablets|F     |101066|        3|
          9|Dayle     |Trail    |dtrail8@tamu.edu    |2003-03-01|First Aid       |F     | 82753|        1|
         10|Redford   |Roberti  |                    |2008-07-21|Clothing        |M     | 72225|        7|
```

---         

```sql
--everything what is not in Sports dep. (same as above)
select *
from employees
where department != 'Sports'
limit 8;
```

```
employee_id|first_name|last_name|email               |hire_date |department      |gender|salary|region_id|
-----------+----------+---------+--------------------+----------+----------------+------+------+---------+
          2|Aeriell   |McNee    |amcnee1@google.es   |2009-01-26|Tools           |F     | 56752|        3|
          3|Sydney    |Symonds  |ssymonds2@hhs.gov   |2010-05-17|Clothing        |F     | 95313|        4|
          4|Avrom     |Rowantree|                    |2014-08-02|Phones & Tablets|M     |119674|        7|
          5|Feliks    |Morffew  |fmorffew4@a8.net    |2003-01-14|Computers       |M     | 55307|        5|
          7|Ardeen    |Curwood  |acurwood6@1und1.de  |2006-02-19|Clothing        |F     | 28995|        7|
          8|Seline    |Dubber   |sdubber7@t-online.de|2012-05-28|Phones & Tablets|F     |101066|        3|
          9|Dayle     |Trail    |dtrail8@tamu.edu    |2003-03-01|First Aid       |F     | 82753|        1|
         10|Redford   |Roberti  |                    |2008-07-21|Clothing        |M     | 72225|        7|
```

---

```sql
--everything what is not in Sports dep. (same as above)
select *
from employees
where department <> 'Sports'
limit 8;
```

```
employee_id|first_name|last_name|email               |hire_date |department      |gender|salary|region_id|
-----------+----------+---------+--------------------+----------+----------------+------+------+---------+
          2|Aeriell   |McNee    |amcnee1@google.es   |2009-01-26|Tools           |F     | 56752|        3|
          3|Sydney    |Symonds  |ssymonds2@hhs.gov   |2010-05-17|Clothing        |F     | 95313|        4|
          4|Avrom     |Rowantree|                    |2014-08-02|Phones & Tablets|M     |119674|        7|
          5|Feliks    |Morffew  |fmorffew4@a8.net    |2003-01-14|Computers       |M     | 55307|        5|
          7|Ardeen    |Curwood  |acurwood6@1und1.de  |2006-02-19|Clothing        |F     | 28995|        7|
          8|Seline    |Dubber   |sdubber7@t-online.de|2012-05-28|Phones & Tablets|F     |101066|        3|
          9|Dayle     |Trail    |dtrail8@tamu.edu    |2003-03-01|First Aid       |F     | 82753|        1|
         10|Redford   |Roberti  |                    |2008-07-21|Clothing        |M     | 72225|        7|
```
-------------------------------------------------------------------

```sql
--NULL never equal to NULL
--empty output (wrong search)
select *
from employees
where email = null
limit 8;
```

```
employee_id|first_name|last_name|email|hire_date|department|gender|salary|region_id|
-----------+----------+---------+-----+---------+----------+------+------+---------+
```

---

```sql
-- you can find the null values in email
select *
from employees
where email IS null
limit 8;
```

```
employee_id|first_name|last_name  |email|hire_date |department      |gender|salary|region_id|
-----------+----------+-----------+-----+----------+----------------+------+------+---------+
          4|Avrom     |Rowantree  |     |2014-08-02|Phones & Tablets|M     |119674|        7|
         10|Redford   |Roberti    |     |2008-07-21|Clothing        |M     | 72225|        7|
         13|Anetta    |Arnao      |     |2009-05-23|Games           |F     | 38162|        1|
         15|Alyson    |Franzonello|     |2004-01-01|Furniture       |F     | 61256|        6|
         18|Ronica    |Armfield   |     |2012-09-14|Toys            |F     |114983|        5|
         21|Bernardo  |Davage     |     |2013-07-11|Clothing        |M     |124949|        6|
         22|Cayla     |Duffer     |     |2007-02-01|Grocery         |F     | 78589|        3|
         26|Frasquito |Cawson     |     |2006-06-24|Movies          |M     | 78881|        1|
```

---

```sql
-- everything where is not null
select *
from employees
where not email IS null
limit 8;
```

```
employee_id|first_name|last_name|email                |hire_date |department      |gender|salary|region_id|
-----------+----------+---------+---------------------+----------+----------------+------+------+---------+
          1|Berrie    |Manueau  |bmanueau0@dion.ne.jp |2006-04-20|Sports          |F     |154864|        4|
          2|Aeriell   |McNee    |amcnee1@google.es    |2009-01-26|Tools           |F     | 56752|        3|
          3|Sydney    |Symonds  |ssymonds2@hhs.gov    |2010-05-17|Clothing        |F     | 95313|        4|
          5|Feliks    |Morffew  |fmorffew4@a8.net     |2003-01-14|Computers       |M     | 55307|        5|
          6|Bethena   |Trow     |btrow5@technorati.com|2003-06-08|Sports          |F     |134501|        3|
          7|Ardeen    |Curwood  |acurwood6@1und1.de   |2006-02-19|Clothing        |F     | 28995|        7|
          8|Seline    |Dubber   |sdubber7@t-online.de |2012-05-28|Phones & Tablets|F     |101066|        3|
          9|Dayle     |Trail    |dtrail8@tamu.edu     |2003-03-01|First Aid       |F     | 82753|        1|
```

---

```sql
-- everything where is not null (same as above)
select *
from employees
where email is not null
limit 8;
```

```
employee_id|first_name|last_name|email                |hire_date |department      |gender|salary|region_id|
-----------+----------+---------+---------------------+----------+----------------+------+------+---------+
          1|Berrie    |Manueau  |bmanueau0@dion.ne.jp |2006-04-20|Sports          |F     |154864|        4|
          2|Aeriell   |McNee    |amcnee1@google.es    |2009-01-26|Tools           |F     | 56752|        3|
          3|Sydney    |Symonds  |ssymonds2@hhs.gov    |2010-05-17|Clothing        |F     | 95313|        4|
          5|Feliks    |Morffew  |fmorffew4@a8.net     |2003-01-14|Computers       |M     | 55307|        5|
          6|Bethena   |Trow     |btrow5@technorati.com|2003-06-08|Sports          |F     |134501|        3|
          7|Ardeen    |Curwood  |acurwood6@1und1.de   |2006-02-19|Clothing        |F     | 28995|        7|
          8|Seline    |Dubber   |sdubber7@t-online.de |2012-05-28|Phones & Tablets|F     |101066|        3|
          9|Dayle     |Trail    |dtrail8@tamu.edu     |2003-03-01|First Aid       |F     | 82753|        1|
```

---

```sql
select *
from employees
where department = 'Sports'
or department = 'First Aid'
or department ='Toys'
limit 8;
```

```
employee_id|first_name|last_name|email                     |hire_date |department|gender|salary|region_id|
-----------+----------+---------+--------------------------+----------+----------+------+------+---------+
          1|Berrie    |Manueau  |bmanueau0@dion.ne.jp      |2006-04-20|Sports    |F     |154864|        4|
          6|Bethena   |Trow     |btrow5@technorati.com     |2003-06-08|Sports    |F     |134501|        3|
          9|Dayle     |Trail    |dtrail8@tamu.edu          |2003-03-01|First Aid |F     | 82753|        1|
         17|Annora    |Bendelow |abendelowg@google.com.hk  |2009-06-12|Toys      |F     | 75283|        5|
         18|Ronica    |Armfield |                          |2012-09-14|Toys      |F     |114983|        5|
         32|Aldon     |Paddison |apaddisonv@lulu.com       |2013-06-30|First Aid |M     |109592|        5|
         34|Lucy      |Olifaunt |lolifauntx@dailymotion.com|2005-02-07|Sports    |F     |165660|        7|
         42|Penelopa  |Danieli  |pdanieli15@microsoft.com  |2014-06-23|Toys      |F     | 85218|        1|
```

---

```sql
-- same as above
select *
from employees
where department IN ('Sports','First Aid','Toys')
limit 8;
```

```
employee_id|first_name|last_name|email                     |hire_date |department|gender|salary|region_id|
-----------+----------+---------+--------------------------+----------+----------+------+------+---------+
          1|Berrie    |Manueau  |bmanueau0@dion.ne.jp      |2006-04-20|Sports    |F     |154864|        4|
          6|Bethena   |Trow     |btrow5@technorati.com     |2003-06-08|Sports    |F     |134501|        3|
          9|Dayle     |Trail    |dtrail8@tamu.edu          |2003-03-01|First Aid |F     | 82753|        1|
         17|Annora    |Bendelow |abendelowg@google.com.hk  |2009-06-12|Toys      |F     | 75283|        5|
         18|Ronica    |Armfield |                          |2012-09-14|Toys      |F     |114983|        5|
         32|Aldon     |Paddison |apaddisonv@lulu.com       |2013-06-30|First Aid |M     |109592|        5|
         34|Lucy      |Olifaunt |lolifauntx@dailymotion.com|2005-02-07|Sports    |F     |165660|        7|
         42|Penelopa  |Danieli  |pdanieli15@microsoft.com  |2014-06-23|Toys      |F     | 85218|        1|
```

---

```sql
-- same as above
select count(*)
from employees
where department IN ('Sports','First Aid','Toys')
limit 8;
```

```
count|
-----+
  139|
```  

---

```sql
--BETWEEN
--find the hits between 80000 and 100000  
select *
from employees
where salary between 80000 and 100000
limit 8;
```

```
employee_id|first_name|last_name|email                   |hire_date |department       |gender|salary|region_id|
-----------+----------+---------+------------------------+----------+-----------------+------+------+---------+
          3|Sydney    |Symonds  |ssymonds2@hhs.gov       |2010-05-17|Clothing         |F     | 95313|        4|
          9|Dayle     |Trail    |dtrail8@tamu.edu        |2003-03-01|First Aid        |F     | 82753|        1|
         12|Leonora   |Casaroli |lcasarolib@plala.or.jp  |2013-07-22|Beauty           |F     | 99504|        3|
         24|Corabel   |Syversen |csyversenn@aboutads.info|2016-03-03|Pharmacy         |F     | 91323|        3|
         31|Cleve     |Conti    |ccontiu@noaa.gov        |2008-02-27|Garden           |M     | 91608|        5|
         36|Anatollo  |Doyle    |                        |2016-04-08|Computers        |M     | 98207|        1|
         38|Edna      |Erwin    |                        |2003-04-09|Children Clothing|F     | 91397|        5|
         40|Modestine |Proctor  |mproctor13@digg.com     |2015-05-04|Tools            |F     | 81889|        7|
```

---
