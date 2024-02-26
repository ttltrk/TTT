
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [DS](https://github.com/ttltrk/TTT/blob/master/SQL/DS/DS.md)

---

### 0211_INTRO_TO_SELECT

---

```sql
select *
from departments
limit 5;
```

```
department|division   |
----------+-----------+
Clothing  |Home       |
Grocery   |Home       |
Decor     |Home       |
Furniture |Home       |
Computers |Electronics|
```

---

```sql
select count(*) nums_of_departments
from departments;
```

```
nums_of_departments|
-------------------+
                 24|
```

---

```sql                 
select *
from regions;
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

---

```sql        
select count(*) sum_of_regions
from regions;
```

```
sum_of_regions|
--------------+
             7|
```

```sql
select *
from employees
limit 5;
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
select count(*) sum_of_employees
from employees;
```

```
sum_of_employees|
----------------+
            1000|
```

---

```sql            
select employee_id, first_name, department
from employees
limit 5;
```

```
employee_id|first_name|department      |
-----------+----------+----------------+
          1|Berrie    |Sports          |
          2|Aeriell   |Tools           |
          3|Sydney    |Clothing        |
          4|Avrom     |Phones & Tablets|
          5|Feliks    |Computers       |
```

---

```sql          
select *
from employees
where department = 'Furniture'
limit 5;
```

```
employee_id|first_name|last_name  |email                     |hire_date |department|gender|salary|region_id|
-----------+----------+-----------+--------------------------+----------+----------+------+------+---------+
         15|Alyson    |Franzonello|                          |2004-01-01|Furniture |F     | 61256|        6|
         41|Jania     |Gresly     |jgresly14@ted.com         |2010-09-08|Furniture |F     | 97812|        6|
        100|Sashenka  |Paris      |sparis2r@si.edu           |2005-10-01|Furniture |F     |117137|        2|
        135|Salli     |Caville    |scaville3q@miibeian.gov.cn|2008-10-17|Furniture |F     | 29124|        5|
        165|Hillary   |Coward     |                          |2015-07-10|Furniture |F     | 70680|        7|
```

---

```sql        
select *
from employees
where department = 'Sports'
limit 5;
```

```
employee_id|first_name|last_name|email                     |hire_date |department|gender|salary|region_id|
-----------+----------+---------+--------------------------+----------+----------+------+------+---------+
          1|Berrie    |Manueau  |bmanueau0@dion.ne.jp      |2006-04-20|Sports    |F     |154864|        4|
          6|Bethena   |Trow     |btrow5@technorati.com     |2003-06-08|Sports    |F     |134501|        3|
         34|Lucy      |Olifaunt |lolifauntx@dailymotion.com|2005-02-07|Sports    |F     |165660|        7|
         51|Norine    |Steinham |                          |2008-08-22|Sports    |F     | 66488|        2|
         77|Maurice   |Philbrick|                          |2006-01-08|Sports    |M     | 67615|        1|
```

---

```sql         
select count(*) employees_in_sport_dep
from employees
where department = 'Sports';
```

```
employees_in_sport_dep|
----------------------+
                    34|
```

---

```sql                    
select *
from employees
where department like '%nitu%'
limit 5;
```

```
employee_id|first_name|last_name  |email                     |hire_date |department|gender|salary|region_id|
-----------+----------+-----------+--------------------------+----------+----------+------+------+---------+
         15|Alyson    |Franzonello|                          |2004-01-01|Furniture |F     | 61256|        6|
         41|Jania     |Gresly     |jgresly14@ted.com         |2010-09-08|Furniture |F     | 97812|        6|
        100|Sashenka  |Paris      |sparis2r@si.edu           |2005-10-01|Furniture |F     |117137|        2|
        135|Salli     |Caville    |scaville3q@miibeian.gov.cn|2008-10-17|Furniture |F     | 29124|        5|
        165|Hillary   |Coward     |                          |2015-07-10|Furniture |F     | 70680|        7|
```

---

```sql      
select *
from employees
where department like 'F%nitu%'
limit 5;
```

```
employee_id|first_name|last_name  |email                     |hire_date |department|gender|salary|region_id|
-----------+----------+-----------+--------------------------+----------+----------+------+------+---------+
         15|Alyson    |Franzonello|                          |2004-01-01|Furniture |F     | 61256|        6|
         41|Jania     |Gresly     |jgresly14@ted.com         |2010-09-08|Furniture |F     | 97812|        6|
        100|Sashenka  |Paris      |sparis2r@si.edu           |2005-10-01|Furniture |F     |117137|        2|
        135|Salli     |Caville    |scaville3q@miibeian.gov.cn|2008-10-17|Furniture |F     | 29124|        5|
        165|Hillary   |Coward     |                          |2015-07-10|Furniture |F     | 70680|        7|
```

---

```sql        
select *
from employees
where department like 'F%'
limit 5;

employee_id|first_name|last_name  |email              |hire_date |department|gender|salary|region_id|
-----------+----------+-----------+-------------------+----------+----------+------+------+---------+
          9|Dayle     |Trail      |dtrail8@tamu.edu   |2003-03-01|First Aid |F     | 82753|        1|
         15|Alyson    |Franzonello|                   |2004-01-01|Furniture |F     | 61256|        6|
         32|Aldon     |Paddison   |apaddisonv@lulu.com|2013-06-30|First Aid |M     |109592|        5|
         41|Jania     |Gresly     |jgresly14@ted.com  |2010-09-08|Furniture |F     | 97812|        6|
         57|Reuben    |Hallard    |                   |2009-03-14|First Aid |M     | 34572|        5|
```

---

```sql         
select *
from employees
where salary > 100000
limit 5;
```

```
employee_id|first_name|last_name|email                   |hire_date |department      |gender|salary|region_id|
-----------+----------+---------+------------------------+----------+----------------+------+------+---------+
          1|Berrie    |Manueau  |bmanueau0@dion.ne.jp    |2006-04-20|Sports          |F     |154864|        4|
          4|Avrom     |Rowantree|                        |2014-08-02|Phones & Tablets|M     |119674|        7|
          6|Bethena   |Trow     |btrow5@technorati.com   |2003-06-08|Sports          |F     |134501|        3|
          8|Seline    |Dubber   |sdubber7@t-online.de    |2012-05-28|Phones & Tablets|F     |101066|        3|
         11|Nickey    |Pointon  |npointona@vistaprint.com|2006-12-30|Jewelry         |M     |126333|        7|
```         

---

```sql         
select count(*) number_of_empl_with_sal_over_100000
from employees
where salary >= 100000;
```

```
number_of_empl_with_sal_over_100000|
-----------------------------------+
                                419|
```

---

```sql                                
select count(*) number_of_empl_with_sal_under_100000
from employees
where salary <= 100000;
```

```
number_of_empl_with_sal_under_100000|
------------------------------------+
                                 581|
```

---
