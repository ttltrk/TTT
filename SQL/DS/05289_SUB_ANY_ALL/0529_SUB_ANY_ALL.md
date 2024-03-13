
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
-- every region except US        

select *
from employees
where region_id > ALL
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

```sql          
--give the employees from kids division and the hired dates is greather than all of the hire_dates of
--employees who work in the maintenance department

select *
from employees
where department in (select department from departments where division = 'Kids')
and hire_date > all (select hire_date from employees where department = 'Maintenance')
limit 10;
```    

```
employee_id|first_name|last_name |email                      |hire_date |department       |gender|salary|region_id|
-----------+----------+----------+---------------------------+----------+-----------------+------+------+---------+
        280|Timotheus |Curbishley|tcurbishley7r@free.fr      |2015-05-14|Children Clothing|M     | 23159|        5|
        346|Taite     |Oats      |toats9l@google.com.hk      |2016-06-08|Children Clothing|M     | 82106|        3|
        470|Hallsy    |McBrier   |                           |2015-12-31|Children Clothing|M     | 98649|        5|
        771|Berti     |Randerson |brandersonle@opensource.org|2016-10-06|Children Clothing|M     |150740|        3|
        955|Rodrique  |Fowlston  |rfowlstonqi@diigo.com      |2016-01-04|Children Clothing|M     | 95051|        7|
        128|Archibald |Pavey     |                           |2015-04-27|Toys             |M     | 59860|        1|
        364|Conrad    |Brognot   |cbrognota3@latimes.com     |2016-04-21|Toys             |M     |154205|        1|
        753|Adelaide  |Gubbin    |agubbinkw@hc360.com        |2016-12-01|Toys             |F     | 27578|        7|
        804|Annie     |Denge     |adengemb@jigsy.com         |2015-02-01|Toys             |F     |149161|        3|
        912|Ardelia   |Dunkley   |adunkleypb@toplist.cz      |2015-10-18|Toys             |F     | 99819|        7|
```

---        

```sql        
-- give me the salary which is the most popular

select salary, count(salary) as mof
from employees
where 1=1
group by salary
order by mof desc
limit 10;
```

```
salary|mof|
------+---+
158546|  2|
121211|  2|
118649|  2|
 54434|  2|
103570|  2|
 37206|  2|
 20613|  1|
 33544|  1|
 78047|  1|
121054|  1|
```

```sql
select salary, count(salary) > 1 as mof
from employees
where 1=1
group by salary
order by mof desc
limit 10;
```

```
salary|mof  |
------+-----+
158546|true |
121211|true |
118649|true |
 54434|true |
103570|true |
 37206|true |
 20613|false|
 33544|false|
 78047|false|
121054|false|
```

---      
