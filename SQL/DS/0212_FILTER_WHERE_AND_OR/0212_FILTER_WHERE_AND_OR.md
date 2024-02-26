
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [DS](https://github.com/ttltrk/TTT/blob/master/SQL/DS/DS.md)

---

### 0212_FILTER_WHERE_AND_OR

---

```sql
select *
from employees
where 1 = 1
limit 5; -- true
```

```
employee_id|first_name|last_name|email               |hire_date |department      |gender|salary|region_id|
-----------+----------+---------+--------------------+----------+----------------+------+------+---------+
          1|Berrie    |Manueau  |bmanueau0@dion.ne.jp|2006-04-20|Sports          |F     |154864|        4|
          2|Aeriell   |McNee    |amcnee1@google.es   |2009-01-26|Tools           |F     | 56752|        3|
          3|Sydney    |Symonds  |ssymonds2@hhs.gov   |2010-05-17|Clothing        |F     | 95313|        4|
          4|Avrom     |Rowantree|                    |2014-08-02|Phones & Tablets|M     |119674|        7|
          5|Feliks    |Morffew  |fmorffew4@a8.net    |2003-01-14|Computers       |M     | 55307|        5|
```          

---

```sql          
select *
from employees
where 1 < 1
limit 5; -- false
```

```
employee_id|first_name|last_name|email|hire_date|department|gender|salary|region_id|
-----------+----------+---------+-----+---------+----------+------+------+---------+
```

---

```sql
select count(*)
from employees
where salary < 100000; -- 581
```

```
count|
-----+
  581|
```

---

```sql  
select count(*)
from employees
where salary > 200000; -- 0
```

```
count|
-----+
    0|
```

---

```sql    
select *
from employees
where department = 'Clothing'
limit 5;
```

```
employee_id|first_name|last_name |email                     |hire_date |department|gender|salary|region_id|
-----------+----------+----------+--------------------------+----------+----------+------+------+---------+
          3|Sydney    |Symonds   |ssymonds2@hhs.gov         |2010-05-17|Clothing  |F     | 95313|        4|
          7|Ardeen    |Curwood   |acurwood6@1und1.de        |2006-02-19|Clothing  |F     | 28995|        7|
         10|Redford   |Roberti   |                          |2008-07-21|Clothing  |M     | 72225|        7|
         21|Bernardo  |Davage    |                          |2013-07-11|Clothing  |M     |124949|        6|
         48|Birgitta  |Stanbrooke|bstanbrooke1b@netvibes.com|2016-09-12|Clothing  |F     | 77259|        1|
```

---

```sql     
select *
from employees
where department = 'Clothing'
and salary > 90000
limit 5;
```

```
employee_id|first_name|last_name|email               |hire_date |department|gender|salary|region_id|
-----------+----------+---------+--------------------+----------+----------+------+------+---------+
          3|Sydney    |Symonds  |ssymonds2@hhs.gov   |2010-05-17|Clothing  |F     | 95313|        4|
         21|Bernardo  |Davage   |                    |2013-07-11|Clothing  |M     |124949|        6|
         54|Verney    |McQuirk  |vmcquirk1h@ning.com |2012-06-17|Clothing  |M     | 97156|        2|
         80|Hester    |Seakin   |hseakin27@netlog.com|2006-11-30|Clothing  |F     |150887|        5|
         84|Kippie    |Petrolli |kpetrolli2b@wsj.com |2008-06-27|Clothing  |M     |128327|        2|
```

---

```sql         
select count(*)
from employees
where department = 'Clothing'
and salary > 90000;
```

```
count|
-----+
   16|
```

---

```sql         
select *
from employees
where department = 'Clothing'
and salary > 90000
and region_id = 2;
```

```
employee_id|first_name|last_name|email                  |hire_date |department|gender|salary|region_id|
-----------+----------+---------+-----------------------+----------+----------+------+------+---------+
         54|Verney    |McQuirk  |vmcquirk1h@ning.com    |2012-06-17|Clothing  |M     | 97156|        2|
         84|Kippie    |Petrolli |kpetrolli2b@wsj.com    |2008-06-27|Clothing  |M     |128327|        2|
        607|Maryanna  |Billin   |mbillingu@woothemes.com|2006-01-26|Clothing  |F     |132264|        2|
```

---

```sql
select count(*)
from employees
where department = 'Clothing'
and salary > 90000; --16
```

```
count|
-----+
   16|
```

---

```sql   
select count(*)
from employees
where department = 'Clothing'
or salary > 90000; --529
```

```
count|
-----+
  529|
```

---

```sql
select *
from employees
where salary < 90000
and (department = 'Clothing' or department = 'Pharmacy')
limit 5;
```

```
employee_id|first_name|last_name |email                     |hire_date |department|gender|salary|region_id|
-----------+----------+----------+--------------------------+----------+----------+------+------+---------+
          7|Ardeen    |Curwood   |acurwood6@1und1.de        |2006-02-19|Clothing  |F     | 28995|        7|
         10|Redford   |Roberti   |                          |2008-07-21|Clothing  |M     | 72225|        7|
         43|Maurise   |Bengefield|mbengefield16@sohu.com    |2005-07-08|Pharmacy  |F     | 63332|        2|
         48|Birgitta  |Stanbrooke|bstanbrooke1b@netvibes.com|2016-09-12|Clothing  |F     | 77259|        1|
         70|Geoff     |Burrell   |gburrell1x@paginegialle.it|2016-05-10|Clothing  |M     | 88652|        1|
```

---

```sql         
select count(*)
from employees
where salary < 90000
and (department = 'Clothing' or department = 'Pharmacy'); -- 53
```

```
count|
-----+
   53|
```

---

```sql   
select *
from employees
where salary < 90000
and department = 'Clothing'
or department = 'Pharmacy'
limit 15;
```

```
employee_id|first_name|last_name |email                     |hire_date |department|gender|salary|region_id|
-----------+----------+----------+--------------------------+----------+----------+------+------+---------+
          7|Ardeen    |Curwood   |acurwood6@1und1.de        |2006-02-19|Clothing  |F     | 28995|        7|
         10|Redford   |Roberti   |                          |2008-07-21|Clothing  |M     | 72225|        7|
         24|Corabel   |Syversen  |csyversenn@aboutads.info  |2016-03-03|Pharmacy  |F     | 91323|        3|
         43|Maurise   |Bengefield|mbengefield16@sohu.com    |2005-07-08|Pharmacy  |F     | 63332|        2|
         48|Birgitta  |Stanbrooke|bstanbrooke1b@netvibes.com|2016-09-12|Clothing  |F     | 77259|        1|
         70|Geoff     |Burrell   |gburrell1x@paginegialle.it|2016-05-10|Clothing  |M     | 88652|        1|
         85|Christal  |Ghest     |                          |2006-10-21|Pharmacy  |F     | 64957|        5|
         92|Port      |Dancy     |pdancy2j@nytimes.com      |2011-06-14|Clothing  |M     | 86352|        3|
         95|Stevana   |Norton    |snorton2m@dion.ne.jp      |2014-02-21|Pharmacy  |F     |111122|        4|
        111|Elihu     |Epp       |                          |2012-11-11|Pharmacy  |M     | 55779|        6|
        121|Collie    |Morfett   |                          |2016-06-17|Clothing  |F     | 89961|        4|
        157|Paulie    |Wadly     |pwadly4c@nytimes.com      |2015-04-09|Pharmacy  |M     | 37829|        5|
        173|Bev       |Kincaid   |                          |2008-12-06|Clothing  |M     | 65336|        7|
        222|Lawton    |Ponceford |lponceford65@state.tx.us  |2012-11-14|Clothing  |M     | 87108|        6|
        259|Reidar    |Rudham    |rrudham76@exblog.jp       |2013-06-30|Clothing  |M     | 31785|        7|
```

---

```sql    
select count(*)
from employees
where salary < 90000
and department = 'Clothing'
or department = 'Pharmacy'; -- 71
```

```
count|
-----+
   71|
```

---

```sql
select *   
from employees
where department = 'Sports'
and department = 'Tools';   
```

```
employee_id|first_name|last_name|email|hire_date|department|gender|salary|region_id|
-----------+----------+---------+-----+---------+----------+------+------+---------+
```

---

```sql
select count(*)
from employees
where department = 'Sports'
and department = 'Tools'; -- 0
```

```
count|
-----+
    0|
```    

---

```sql
select *   
from employees
where department = 'Sports'
or department = 'Tools'
limit 5;
```

```
employee_id|first_name|last_name|email                     |hire_date |department|gender|salary|region_id|
-----------+----------+---------+--------------------------+----------+----------+------+------+---------+
          1|Berrie    |Manueau  |bmanueau0@dion.ne.jp      |2006-04-20|Sports    |F     |154864|        4|
          2|Aeriell   |McNee    |amcnee1@google.es         |2009-01-26|Tools     |F     | 56752|        3|
          6|Bethena   |Trow     |btrow5@technorati.com     |2003-06-08|Sports    |F     |134501|        3|
         14|Jodi      |Hook     |jhookd@booking.com        |2003-10-16|Tools     |F     |126588|        2|
         34|Lucy      |Olifaunt |lolifauntx@dailymotion.com|2005-02-07|Sports    |F     |165660|        7|
```

---

```sql
select count(*)
from employees
where department = 'Sports'
or department = 'Tools'; -- 73
```

```
count|
-----+
   73|
```

---

```sql
select count(*)
from employees
where department = 'Sports'
union
select count(*)
from employees
where department = 'Tools';
```

```
count|
-----+
   34|
   39|
--total: 73   
```

---
