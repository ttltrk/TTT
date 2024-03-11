
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
-- give me emp from asia or canada with salary over 130000

select *
from employees
where salary > 130000
and region_id in (select region_id from regions where country = 'Asia' or country = 'Canada')
limit 10;     
```

```
employee_id|first_name|last_name|email                     |hire_date |department       |gender|salary|region_id|
-----------+----------+---------+--------------------------+----------+-----------------+------+------+---------+
          1|Berrie    |Manueau  |bmanueau0@dion.ne.jp      |2006-04-20|Sports           |F     |154864|        4|
         29|Cortie    |Ambrosini|cambrosinis@microsoft.com |2014-05-03|Games            |M     |133847|        4|
         33|Ernestine |Sloley   |esloleyw@rakuten.co.jp    |2011-06-27|Device Repair    |F     |146549|        5|
         34|Lucy      |Olifaunt |lolifauntx@dailymotion.com|2005-02-07|Sports           |F     |165660|        7|
         45|Giacopo   |Mariner  |gmariner18@noaa.gov       |2005-01-31|Grocery          |M     |130445|        7|
         60|Orland    |Backhouse|obackhouse1n@yahoo.co.jp  |2007-07-12|Beauty           |M     |162845|        6|
         74|Margy     |Bess     |mbess21@google.fr         |2012-11-10|Computers        |F     |144141|        7|
         79|Rora      |Brumfitt |rbrumfitt26@ucoz.ru       |2003-01-12|Children Clothing|F     |153489|        7|
         80|Hester    |Seakin   |hseakin27@netlog.com      |2006-11-30|Clothing         |F     |150887|        5|
         86|Doll      |Blondel  |dblondel2d@list-manage.com|2007-03-30|Camping          |F     |136773|        7|
```

```sql
--same as above

select *
from employees
where salary > 130000
and region_id in (select region_id from regions where country in ('Asia', 'Canada'))
limit 10;         
```

```
employee_id|first_name|last_name|email                     |hire_date |department       |gender|salary|region_id|
-----------+----------+---------+--------------------------+----------+-----------------+------+------+---------+
          1|Berrie    |Manueau  |bmanueau0@dion.ne.jp      |2006-04-20|Sports           |F     |154864|        4|
         29|Cortie    |Ambrosini|cambrosinis@microsoft.com |2014-05-03|Games            |M     |133847|        4|
         33|Ernestine |Sloley   |esloleyw@rakuten.co.jp    |2011-06-27|Device Repair    |F     |146549|        5|
         34|Lucy      |Olifaunt |lolifauntx@dailymotion.com|2005-02-07|Sports           |F     |165660|        7|
         45|Giacopo   |Mariner  |gmariner18@noaa.gov       |2005-01-31|Grocery          |M     |130445|        7|
         60|Orland    |Backhouse|obackhouse1n@yahoo.co.jp  |2007-07-12|Beauty           |M     |162845|        6|
         74|Margy     |Bess     |mbess21@google.fr         |2012-11-10|Computers        |F     |144141|        7|
         79|Rora      |Brumfitt |rbrumfitt26@ucoz.ru       |2003-01-12|Children Clothing|F     |153489|        7|
         80|Hester    |Seakin   |hseakin27@netlog.com      |2006-11-30|Clothing         |F     |150887|        5|
         86|Doll      |Blondel  |dblondel2d@list-manage.com|2007-03-30|Camping          |F     |136773|        7|
```       

---

```sql
-- what is the difference between the max salary and the emp salary         

select
	first_name,
	department,
	salary as emp_salary,
	(select max(salary) from employees) as max_salary,  
	(select max(salary) from employees) - salary as diff
from employees
where region_id in (select region_id from regions where country in ('Asia', 'Canada'))
limit 10;  
```

```
first_name|department      |emp_salary|max_salary|diff  |
----------+----------------+----------+----------+------+
Berrie    |Sports          |    154864|    166976| 12112|
Sydney    |Clothing        |     95313|    166976| 71663|
Avrom     |Phones & Tablets|    119674|    166976| 47302|
Feliks    |Computers       |     55307|    166976|111669|
Ardeen    |Clothing        |     28995|    166976|137981|
Redford   |Clothing        |     72225|    166976| 94751|
Nickey    |Jewelry         |    126333|    166976| 40643|
Alyson    |Furniture       |     61256|    166976|105720|
Merell    |Movies          |     78141|    166976| 88835|
Annora    |Toys            |     75283|    166976| 91693|
```

---
