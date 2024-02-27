
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [DS](https://github.com/ttltrk/TTT/blob/master/SQL/DS/DS.md)

---

### 0215_ORDERBY_LIMIT_DISTINCT

---

```sql
--ORDER BY
select *
from employees
order by employee_id
limit 8;
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
```

---          

```sql
--reverse order          
select *
from employees
order by employee_id desc
limit 8;
```

```
employee_id|first_name|last_name   |email                   |hire_date |department       |gender|salary|region_id|
-----------+----------+------------+------------------------+----------+-----------------+------+------+---------+
       1000|Jacquelin |Cassam      |jcassamrr@cam.ac.uk     |2010-01-27|Music            |F     | 28726|        2|
        999|Kingston  |Piwall      |kpiwallrq@nyu.edu       |2012-07-07|Music            |M     | 45679|        7|
        998|Brandice  |Gillicuddy  |bgillicuddyrp@adobe.com |2014-11-30|Phones & Tablets |F     |134058|        2|
        997|Rhianna   |Trynor      |rtrynorro@uiuc.edu      |2005-04-07|Beauty           |F     |120753|        7|
        996|Gardiner  |Aron        |garonrn@java.com        |2015-11-29|Garden           |M     |111859|        1|
        995|Reese     |Watkin      |rwatkinrm@typepad.com   |2014-10-21|Toys             |M     |102169|        3|
        994|Aurlie    |Kindleysides|                        |2004-05-20|Device Repair    |F     |104822|        3|
        993|Frank     |Garnson     |fgarnsonrk@bloglovin.com|2013-12-26|Children Clothing|M     | 95828|        7|
```

---        

```sql
--abc sorting        
select *
from employees
order by department
limit 8;
```

```
employee_id|first_name|last_name|email                  |hire_date |department|gender|salary|region_id|
-----------+----------+---------+-----------------------+----------+----------+------+------+---------+
        247|Tammie    |Grishukov|                       |2011-12-08|Automotive|F     |160039|        5|
        274|Lorelle   |Kelberman|lkelberman7l@wired.com |2004-01-27|Automotive|F     |119959|        7|
        126|Roslyn    |Guiu     |rguiu3h@com.com        |2003-08-11|Automotive|F     |157260|        1|
         23|Vanda     |Marwick  |vmarwickm@upenn.edu    |2014-02-06|Automotive|F     |103570|        4|
         90|Irita     |Starie   |istarie2h@answers.com  |2004-10-15|Automotive|F     |160783|        1|
        249|Sterling  |Pagen    |spagen6w@privacy.gov.au|2004-09-02|Automotive|M     | 56095|        7|
         97|Jilleen   |Toone    |                       |2013-04-20|Automotive|F     |137393|        3|
        305|Ladonna   |McCrow   |lmccrow8g@nhs.uk       |2003-08-10|Automotive|F     |111775|        2|
```

---        

```sql
--reverse abc sorting        
select *
from employees
order by department desc
limit 8;
```

```
employee_id|first_name |last_name|email                      |hire_date |department|gender|salary|region_id|
-----------+-----------+---------+---------------------------+----------+----------+------+------+---------+
        292|Norri      |Tandey   |ntandey83@sina.com.cn      |2008-04-26|Vitamins  |F     |158847|        7|
        332|Ame        |Pateman  |apateman97@ca.gov          |2003-07-13|Vitamins  |F     | 21931|        2|
        235|Cary       |Kelshaw  |ckelshaw6i@alexa.com       |2015-09-13|Vitamins  |M     |139145|        6|
        288|Buckie     |Jodrellec|bjodrellec7z@vistaprint.com|2016-10-10|Vitamins  |M     | 30289|        4|
         71|Tobi       |Lamasna  |tlamasna1y@gmpg.org        |2012-04-10|Vitamins  |F     | 68925|        4|
        310|Archambault|Marriner |amarriner8l@angelfire.com  |2015-09-12|Vitamins  |M     |123287|        2|
         39|Mikael     |Kybbye   |mkybbye12@si.edu           |2010-12-07|Vitamins  |M     | 52642|        1|
        343|Maridel    |Whellans |mwhellans9i@hud.gov        |2014-12-05|Vitamins  |F     | 24884|        1|
```

---        

```sql
-- order by department        
select department, first_name, email
from employees
order by 1
limit 8;
```

```
department|first_name|email                  |
----------+----------+-----------------------+
Automotive|Tammie    |                       |
Automotive|Lorelle   |lkelberman7l@wired.com |
Automotive|Roslyn    |rguiu3h@com.com        |
Automotive|Vanda     |vmarwickm@upenn.edu    |
Automotive|Irita     |istarie2h@answers.com  |
Automotive|Sterling  |spagen6w@privacy.gov.au|
Automotive|Jilleen   |                       |
Automotive|Ladonna   |lmccrow8g@nhs.uk       |
```

```sql
-- order by first_name        
select department, first_name, email
from employees
order by 2
limit 8;
```

```
department|first_name|email                    |
----------+----------+-------------------------+
Movies    |Abbot     |aattwilljn@cbsnews.com   |
Automotive|Abbott    |amundowhz@prlog.org      |
Jewelry   |Abby      |aseawright5z@ask.com     |
Sports    |Adam      |afenwickhn@whitehouse.gov|
Grocery   |Addia     |                         |
```

```sql
-- order by mail        
select department, first_name, email
from employees
order by 3
limit 8;
```

```
department|first_name|email                    |
----------+----------+-------------------------+
Music     |Alisa     |aallender5y@delicious.com|
Pharmacy  |Arabelle  |aarch77@marriott.com     |
Decor     |Ali       |aarnaudet5g@gizmodo.com  |
Garden    |Anders    |aaronovitzjv@furl.net    |
Movies    |Abbot     |aattwilljn@cbsnews.com   |
Toys      |Annora    |abendelowg@google.com.hk |
Music     |Alexander |abodkerl6@drupal.org     |
Decor     |Ashia     |abreetone9@upenn.edu     |
```

---

```sql
select distinct department
from employees
order by 1
limit 8;
```

```
department       |
-----------------+
Automotive       |
Beauty           |
Books            |
Camping          |
Children Clothing|
Clothing         |
Computers        |
Cosmetics        |
```

---

```sql
select count(distinct department)
from employees;
```

```
count|
-----+
   27|
```

---

```sql
--limit fetch first
select distinct department
from employees
order by 1
limit 8;
```

```
department       |
-----------------+
Automotive       |
Beauty           |
Books            |
Camping          |
Children Clothing|
Clothing         |
Computers        |
Cosmetics        |
```

---

```sql
select distinct department
from employees
order by 1
fetch first 8 rows only;
```

```
department       |
-----------------+
Automotive       |
Beauty           |
Books            |
Camping          |
Children Clothing|
Clothing         |
Computers        |
Cosmetics        |
```

---

```sql
--as
select distinct department as sorted_dep
from employees
order by 1
fetch first 8 rows only;
```

```
sorted_dep       |
-----------------+
Automotive       |
Beauty           |
Books            |
Camping          |
Children Clothing|
Clothing         |
Computers        |
Cosmetics        |
```

---

```sql
select first_name, last_name, department, salary as "Yearly Salary"
from employees
limit 8;
```

```
first_name|last_name|department      |Yearly Salary|
----------+---------+----------------+-------------+
Berrie    |Manueau  |Sports          |       154864|
Aeriell   |McNee    |Tools           |        56752|
Sydney    |Symonds  |Clothing        |        95313|
Avrom     |Rowantree|Phones & Tablets|       119674|
Feliks    |Morffew  |Computers       |        55307|
Bethena   |Trow     |Sports          |       134501|
Ardeen    |Curwood  |Clothing        |        28995|
Seline    |Dubber   |Phones & Tablets|       101066|
```

---
