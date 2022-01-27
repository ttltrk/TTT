
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### SELECT

---

```
The SELECT statement is used to select data from a database.
The data returned is stored in a result table, called the result-set.
```

---

* [BASICS](#BASICS)
* [SELECT_FROM_SELECT](#SELECT_FROM_SELECT)

---

#### BASICS

```sql
SELECT * FROM trk_test_01;

>>>
personid|lastname|firstname|address |city   |
--------|--------|---------|--------|-------|
       1|trk     |ttl      |Hlavna 5|TNO    |
       2|doe     |jon      |CA      |GS     |
       3|ewong   |samatha  |SFR     |Dallas |
       6|kawhi   |leo      |canada  |toronto|
       4|bbking  |bbe      |hemp    |ams    |
       5|petofi  |alex     |var     |BP     |
>>>
```

```sql
SELECT * FROM trk_test_02;

>>>
systemid|dep       |city|
--------|----------|----|
       1|ITOPS     |BA  |
       2|DEVOPS    |BP  |
       3|HR        |SF  |
       4|MANAGEMENT|LA  |
       5|ITOPS     |BP  |
       6|ITOPS     |LN  |
       7|DEVOPS    |NYC |
>>>
```

```sql
SELECT personid, lastname FROM trk_test_01;

>>>
personid|lastname|
--------|--------|
       1|trk     |
       2|doe     |
       3|ewong   |
       6|kawhi   |
       4|bbking  |
       5|petofi  |
>>>
```

[^^^](#SELECT)

---

#### SELECT_FROM_SELECT

```sql
SELECT lastname FROM (SELECT * FROM trk_test_01) AS lname; --select from select

>>>
lastname|
--------|
trk     |
doe     |
ewong   |
kawhi   |
bbking  |
petofi  |
>>>
```

[^^^](#SELECT)

---

#### Introducing to SELECT

```sql
select * from departments limit 5;

department|division   |
----------+-----------+
Clothing  |Home       |
Grocery   |Home       |
Decor     |Home       |
Furniture |Home       |
Computers |Electronics|

select count(*) nums_of_departments from departments;

nums_of_departments|
-------------------+
                 24|
```

```sql
select * from regions;

region_id|region     |country      |
---------+-----------+-------------+
        1|Southwest  |United States|
        2|Northeast  |United States|
        3|Northwest  |United States|
        4|Central    |Asia         |
        5|East Asia  |Asia         |
        6|Quebec     |Canada       |
        7|Nova Scotia|Canada       |

select count(*) sum_of_regions from regions;

sum_of_regions|
--------------+
             7|
```

```sql
select * from employees limit 5;

employee_id|first_name|last_name|email               |hire_date |department      |gender|salary|region_id|
-----------+----------+---------+--------------------+----------+----------------+------+------+---------+
          1|Berrie    |Manueau  |bmanueau0@dion.ne.jp|2006-04-20|Sports          |F     |154864|        4|
          2|Aeriell   |McNee    |amcnee1@google.es   |2009-01-26|Tools           |F     | 56752|        3|
          3|Sydney    |Symonds  |ssymonds2@hhs.gov   |2010-05-17|Clothing        |F     | 95313|        4|
          4|Avrom     |Rowantree|                    |2014-08-02|Phones & Tablets|M     |119674|        7|
          5|Feliks    |Morffew  |fmorffew4@a8.net    |2003-01-14|Computers       |M     | 55307|        5|

select count(*) sum_of_employees from employees;

sum_of_employees|
----------------+
            1000|
```

```sql
select employee_id, first_name, department from employees;

select * from employees where department = 'Furniture';
select * from employees where department = 'Sports';
select count(*) from employees where department = 'Sports';
```

```sql
select * from employees where department like '%nitu%';
select * from employees where department like 'F%nitu%';
select * from employees where department like 'F%';
```

```sql
select * from employees where salary > 100000;
select count(*) from employees where salary >= 100000;
select count(*) from employees where salary <= 100000;
```

#### Filter data using WHERE + AND & OR

```sql
select * from employees where 1 = 1 limit 5; -- true

employee_id|first_name|last_name|email               |hire_date |department      |gender|salary|region_id|
-----------+----------+---------+--------------------+----------+----------------+------+------+---------+
          1|Berrie    |Manueau  |bmanueau0@dion.ne.jp|2006-04-20|Sports          |F     |154864|        4|
          2|Aeriell   |McNee    |amcnee1@google.es   |2009-01-26|Tools           |F     | 56752|        3|
          3|Sydney    |Symonds  |ssymonds2@hhs.gov   |2010-05-17|Clothing        |F     | 95313|        4|
          4|Avrom     |Rowantree|                    |2014-08-02|Phones & Tablets|M     |119674|        7|
          5|Feliks    |Morffew  |fmorffew4@a8.net    |2003-01-14|Computers       |M     | 55307|        5|

select * from employees where 1 < 1 limit 5; -- false

employee_id|first_name|last_name|email|hire_date|department|gender|salary|region_id|
-----------+----------+---------+-----+---------+----------+------+------+---------+
```

```sql
select count(*) from employees where salary < 100000; -- 581
select count(*) from employees where salary > 200000; -- 0
```

```sql
select * from employees where department = 'Clothing' limit 5;

employee_id|first_name|last_name |email                     |hire_date |department|gender|salary|region_id|
-----------+----------+----------+--------------------------+----------+----------+------+------+---------+
          3|Sydney    |Symonds   |ssymonds2@hhs.gov         |2010-05-17|Clothing  |F     | 95313|        4|
          7|Ardeen    |Curwood   |acurwood6@1und1.de        |2006-02-19|Clothing  |F     | 28995|        7|
         10|Redford   |Roberti   |                          |2008-07-21|Clothing  |M     | 72225|        7|
         21|Bernardo  |Davage    |                          |2013-07-11|Clothing  |M     |124949|        6|
         48|Birgitta  |Stanbrooke|bstanbrooke1b@netvibes.com|2016-09-12|Clothing  |F     | 77259|        1|

select * from employees where department = 'Clothing' and salary > 90000 limit 5;

employee_id|first_name|last_name|email               |hire_date |department|gender|salary|region_id|
-----------+----------+---------+--------------------+----------+----------+------+------+---------+
          3|Sydney    |Symonds  |ssymonds2@hhs.gov   |2010-05-17|Clothing  |F     | 95313|        4|
         21|Bernardo  |Davage   |                    |2013-07-11|Clothing  |M     |124949|        6|
         54|Verney    |McQuirk  |vmcquirk1h@ning.com |2012-06-17|Clothing  |M     | 97156|        2|
         80|Hester    |Seakin   |hseakin27@netlog.com|2006-11-30|Clothing  |F     |150887|        5|
         84|Kippie    |Petrolli |kpetrolli2b@wsj.com |2008-06-27|Clothing  |M     |128327|        2|

select * from employees where department = 'Clothing' and salary > 90000 and region_id = 2;

employee_id|first_name|last_name|email                  |hire_date |department|gender|salary|region_id|
-----------+----------+---------+-----------------------+----------+----------+------+------+---------+
         54|Verney    |McQuirk  |vmcquirk1h@ning.com    |2012-06-17|Clothing  |M     | 97156|        2|
         84|Kippie    |Petrolli |kpetrolli2b@wsj.com    |2008-06-27|Clothing  |M     |128327|        2|
        607|Maryanna  |Billin   |mbillingu@woothemes.com|2006-01-26|Clothing  |F     |132264|        2|
```

```sql
select count(*) from employees where department = 'Clothing' and salary > 90000; --16
select count(*) from employees where department = 'Clothing' or salary > 90000; --529
```

```sql
select * from employees where salary < 90000 and (department = 'Clothing' or department = 'Pharmacy');
select count(*) from employees where salary < 90000 and (department = 'Clothing' or department = 'Pharmacy'); -- 53
select count(*) from employees where salary < 90000 and department = 'Clothing' or department = 'Pharmacy'; -- 71
```

```sql
select count(*) from employees where department = 'Sports' and department = 'Tools'; -- 0
select count(*) from employees where department = 'Sports' or department = 'Tools'; -- 73
```

#### Filtering operators IN, NOT IN, IS NULL, BETWEEN

```sql
select * from employees where not department = 'Sports'; --everything what is not in Sports dep.
select * from employees where department != 'Sports'; --everything what is not in Sports dep. (same as above)
select * from employees where department <> 'Sports'; --everything what is not in Sports dep. (same as above)
```

```sql
--NULL never equal to NULL
select * from employees where email = null; --empty output (wrong search)
select * from employees where email IS null; -- you can find the null values in email
select * from employees where not email IS null; -- everything where is not null
select * from employees where email is not null; -- everything where is not null (same as above)
```

```sql
--IN
select * from employees where department = 'Sports' or department = 'First Aid' or department ='Toys';
select * from employees where department IN ('Sports','First Aid','Toys'); -- same as above
```

```sql
--BETWEEN
select * from employees where salary between 80000 and 100000; --find the hits between 80000 and 100000
```

#### WHERE clause and operators

```sql
select first_name, email from employees where gender = 'F' and department ='Tools' and salary > 110000;
```

```sql
select first_name, hire_date from employees where salary > 165000 or (department ='Sports' and gender ='M');
```

```sql
select first_name, hire_date from employees where hire_date between '2002-01-01' and '2004-01-01';
```

```sql
select * from employees where department = 'Automotive' and salary between 40000 and 100000 and gender ='M' or (gender ='F' and department ='Toys');
```

#### Using ORDER BY, LIMIT, DISTINCT and Renaming columns

```sql
--ORDER BY
select * from employees order by employee_id;
select * from employees order by employee_id desc; --reverse order

select * from employees order by department; --abc sorting
select * from employees order by department desc; --reverse abc sorting
```

```sql
select department, first_name, email from employees order by 2;
select distinct department from employees order by 1;
select count(distinct department) from employees; --27
```

```sql
--limit fetch first
select distinct department from employees order by 1 limit 10;
select distinct department from employees order by 1 fetch first 10 rows only;
```

```sql
--as
select distinct department as sorted_dep from employees order by 1 fetch first 10 rows only;
select first_name, last_name, department, salary as "Yearly Salary" from employees;
```

[^^^](#SELECT)

---

#### UPPER(), LOWER(), LENGTH(), TRIM() Booleans

```sql
--UPPER(), LOWER()
select UPPER(first_name), LOWER(department) from employees;

--LENGTH()
select LENGTH(first_name), LOWER(department) from employees;

--TRIM()
select LENGTH('       Hello there        '); --26
select TRIM('       Hello there        '); -- removing the extra spaces
select LENGTH(TRIM('       Hello there        ')); --11
```

```sql
--concat two columns into one
select first_name || ' ' || last_name as full_name from employees;
select first_name || ' ' || last_name full_name from employees; --same as above (without as)
```

```sql
--boolean expr
select first_name || ' ' || last_name full_name, (salary > 140000) is_highly_paid from employees order by salary desc;
```

```sql
select department, ('Clothing' in (department, first_name)) from employees;

select department, (department like '%oth%') from employees;
```

[^^^](#SELECT)

---

#### String functions SUBSTRING(), REPLACE(), POSITION(), COALESCE()

```sql
select 'This is test data' test_data;

select substring('This is test data' from 1 for 4) test_data_extracted; --This
select substring('This is test data' from 9 for 4) test_data_extracted; --test
select substring('This is test data' from 9) test_data_extracted; --test data
select substring('This is test data' from 3) test_data_extracted; --is is test data

select department, replace(department, 'Clothing', 'Attire') modified_data from departments;

>>>
department       |modified_data    |
-----------------|-----------------|
Clothing         |Attire           |
Grocery          |Grocery          |
Decor            |Decor            |
Furniture        |Furniture        |
Computers        |Computers        |
Device Repair    |Device Repair    |
Phones & Tablets |Phones & Tablets |
Garden           |Garden           |
Camping & Fishing|Camping & Fishing|
Sports           |Sports           |
Children Clothing|Children Attire  |
Toys             |Toys             |
>>>
```

```sql
select department, replace(department, 'Clothing', 'Attire') modified_data, department || ' department' as "Complete Department Name" from departments;

>>>
department       |modified_data    |Complete Department Name    |
-----------------|-----------------|----------------------------|
Clothing         |Attire           |Clothing department         |
Grocery          |Grocery          |Grocery department          |
Decor            |Decor            |Decor department            |
Furniture        |Furniture        |Furniture department        |
Computers        |Computers        |Computers department        |
Device Repair    |Device Repair    |Device Repair department    |
Phones & Tablets |Phones & Tablets |Phones & Tablets department |
Garden           |Garden           |Garden department           |
Camping & Fishing|Camping & Fishing|Camping & Fishing department|
Sports           |Sports           |Sports department           |
Children Clothing|Children Attire  |Children Clothing department|
Toys             |Toys             |Toys department             |
>>>
```

```sql
--POSITION()
select email, position('@' in email) from employees;

>>>
email                             |position|
----------------------------------|--------|
bmanueau0@dion.ne.jp              |      10|
amcnee1@google.es                 |       8|
ssymonds2@hhs.gov                 |      10|
                                  |        |
fmorffew4@a8.net                  |      10|
btrow5@technorati.com             |       7|
>>>
```

```sql
select email, substring(email, position('@' in email)) formatted_text from employees;

>>>
email                             |formatted_text         |
----------------------------------|-----------------------|
bmanueau0@dion.ne.jp              |@dion.ne.jp            |
amcnee1@google.es                 |@google.es             |
ssymonds2@hhs.gov                 |@hhs.gov               |
                                  |                       |
fmorffew4@a8.net                  |@a8.net                |
btrow5@technorati.com             |@technorati.com        |
acurwood6@1und1.de                |@1und1.de              |
sdubber7@t-online.de              |@t-online.de           |
dtrail8@tamu.edu                  |@tamu.edu              |
                                  |                       |
>>>
```

```sql
select email, substring(email, position('@' in email) +1) formatted_text from employees;

>>>
email                             |formatted_text        |
----------------------------------|----------------------|
bmanueau0@dion.ne.jp              |dion.ne.jp            |
amcnee1@google.es                 |google.es             |
ssymonds2@hhs.gov                 |hhs.gov               |
                                  |                      |
fmorffew4@a8.net                  |a8.net                |
btrow5@technorati.com             |technorati.com        |
acurwood6@1und1.de                |1und1.de              |
>>>
```

```sql
select email, substring(email, position('@' in email) -1) formatted_text from employees;

>>>
email                             |formatted_text          |
----------------------------------|------------------------|
bmanueau0@dion.ne.jp              |0@dion.ne.jp            |
amcnee1@google.es                 |1@google.es             |
ssymonds2@hhs.gov                 |2@hhs.gov               |
                                  |                        |
fmorffew4@a8.net                  |4@a8.net                |
btrow5@technorati.com             |5@technorati.com        |
acurwood6@1und1.de                |6@1und1.de              |
>>>
```

```sql
select email from employees;

>>>
email                             |
----------------------------------|
bmanueau0@dion.ne.jp              |
amcnee1@google.es                 |
ssymonds2@hhs.gov                 |
                                  |
fmorffew4@a8.net                  |
btrow5@technorati.com             |
acurwood6@1und1.de                |
sdubber7@t-online.de              |
dtrail8@tamu.edu                  |
                                  |
npointona@vistaprint.com          |
>>>
```

```sql
select coalesce(email, 'NONE') as email from employees;

>>>
email                             |
----------------------------------|
bmanueau0@dion.ne.jp              |
amcnee1@google.es                 |
ssymonds2@hhs.gov                 |
NONE                              |
fmorffew4@a8.net                  |
btrow5@technorati.com             |
acurwood6@1und1.de                |
sdubber7@t-online.de              |
dtrail8@tamu.edu                  |
NONE                              |
npointona@vistaprint.com          |
>>>
```

[^^^](#SELECT)

---
