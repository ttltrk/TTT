
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [DS](https://github.com/ttltrk/TTT/blob/master/SQL/DS/DS.md)

---

### 0527_INTRO_SUBQUERIES

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

```sql
select count(distinct department)
from departments;
```

```
count|
-----+
   24|
```

```sql
select count(*)
from employees e2
where department not in (select department from departments d2);
```

```
count|
-----+
   57|
```

---

```sql
--SQL Error [42601]: ERROR: subquery in FROM must have an alias   

select *
from
	(select * from employees e2 where salary > 150000);
```

```sql
-- its working now

select email, *
from
	(select * from employees e2 where salary > 150000) a
limit 10;
```

```
email                     |employee_id|first_name|last_name|email                     |hire_date |department       |gender|salary|region_id|
--------------------------+-----------+----------+---------+--------------------------+----------+-----------------+------+------+---------+
bmanueau0@dion.ne.jp      |          1|Berrie    |Manueau  |bmanueau0@dion.ne.jp      |2006-04-20|Sports           |F     |154864|        4|
bhendricksi@privacy.gov.au|         19|Bernardine|Hendricks|bhendricksi@privacy.gov.au|2006-02-04|Device Repair    |F     |158268|        3|
nchawkleyq@flavors.me     |         27|Niles     |Chawkley |nchawkleyq@flavors.me     |2013-09-22|Movies           |M     |156303|        3|
lolifauntx@dailymotion.com|         34|Lucy      |Olifaunt |lolifauntx@dailymotion.com|2005-02-07|Sports           |F     |165660|        7|
cadamowicz1f@tiny.cc      |         52|Charla    |Adamowicz|cadamowicz1f@tiny.cc      |2011-03-16|Music            |F     |162206|        2|
obackhouse1n@yahoo.co.jp  |         60|Orland    |Backhouse|obackhouse1n@yahoo.co.jp  |2007-07-12|Beauty           |M     |162845|        6|
                          |         68|Wilhelmina|Martignon|                          |2013-04-11|Jewelry          |F     |150818|        3|
rbrumfitt26@ucoz.ru       |         79|Rora      |Brumfitt |rbrumfitt26@ucoz.ru       |2003-01-12|Children Clothing|F     |153489|        7|
hseakin27@netlog.com      |         80|Hester    |Seakin   |hseakin27@netlog.com      |2006-11-30|Clothing         |F     |150887|        5|
csappson2g@aboutads.info  |         89|Claudetta |Sappson  |csappson2g@aboutads.info  |2011-08-24|Sports           |F     |157802|        5|
```

```sql
select a.first_name, a.salary
from
	(select * from employees e2 where salary > 150000 order by salary desc) a
limit 10;
```

```
first_name|salary|
----------+------+
Jacklyn   |166976|
Carissa   |166765|
Riley     |166569|
Lauren    |166016|
Lucy      |165660|
Barby     |164588|
Ev        |164582|
Sherwynd  |164470|
Michail   |164355|
Hermione  |164219|
```

---

```sql
select
a.employee_name,
a.yearly_salary
from
	(select first_name employee_name, salary yearly_salary
		from employees where salary > 150000 order by salary desc) a
limit 10;
```

```
employee_name|yearly_salary|
-------------+-------------+
Jacklyn      |       166976|
Carissa      |       166765|
Riley        |       166569|
Lauren       |       166016|
Lucy         |       165660|
Barby        |       164588|
Ev           |       164582|
Sherwynd     |       164470|
Michail      |       164355|
Hermione     |       164219|
```

---

```sql
select e2.gender, *
from employees e2
where e2.gender = 'F'
limit 10;
```

```
gender|employee_id|first_name|last_name|email                 |hire_date |department      |gender|salary|region_id|
------+-----------+----------+---------+----------------------+----------+----------------+------+------+---------+
F     |          1|Berrie    |Manueau  |bmanueau0@dion.ne.jp  |2006-04-20|Sports          |F     |154864|        4|
F     |          2|Aeriell   |McNee    |amcnee1@google.es     |2009-01-26|Tools           |F     | 56752|        3|
F     |          3|Sydney    |Symonds  |ssymonds2@hhs.gov     |2010-05-17|Clothing        |F     | 95313|        4|
F     |          6|Bethena   |Trow     |btrow5@technorati.com |2003-06-08|Sports          |F     |134501|        3|
F     |          7|Ardeen    |Curwood  |acurwood6@1und1.de    |2006-02-19|Clothing        |F     | 28995|        7|
F     |          8|Seline    |Dubber   |sdubber7@t-online.de  |2012-05-28|Phones & Tablets|F     |101066|        3|
F     |          9|Dayle     |Trail    |dtrail8@tamu.edu      |2003-03-01|First Aid       |F     | 82753|        1|
F     |         12|Leonora   |Casaroli |lcasarolib@plala.or.jp|2013-07-22|Beauty          |F     | 99504|        3|
F     |         13|Anetta    |Arnao    |                      |2009-05-23|Games           |F     | 38162|        1|
F     |         14|Jodi      |Hook     |jhookd@booking.com    |2003-10-16|Tools           |F     |126588|        2|
```

---
