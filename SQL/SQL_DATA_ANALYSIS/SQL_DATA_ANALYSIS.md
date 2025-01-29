
###### [SQL](https://github.com/ttltrk/TTT/tree/master/SQL/SQL.md)

---

#### SQL_for_Data_Analysis

---

* [U_LINK]()

---

* [01_INTRO](#01_INTRO)
* [03](#03)
* []()
* []()
* []()
* []()
* []()
* []()
* []()
* []()

---

#### 01_INTRO

```sql
select * from students;

>>>
id|student_name   |grade_level|gpa|school_lunch|birthday  |email                              |
--+---------------+-----------+---+------------+----------+-----------------------------------+
 1|Abby Johnson   |         10|3.1|Yes         |2008-05-14|abby.johnson@mavenhighschool.com   |
 2|Bob Smith      |         11|3.1|No          |2007-09-30|bob.smith@mavenhighschool.com      |
 3|Catherine Davis|         12|3.6|Yes         |2006-11-21|catherine.davis@mavenhighschool.com|
 4|Daniel Brown   |          9|3.5|Yes         |2009-03-10|daniel.brown@mavenhighschool.edu   |
 5|Eva Martinez   |         10|2.7|No          |2008-02-05|eva.martinez@mavenhighschool.com   |
 6|Frank Wilson   |         11|3.2|No          |2007-07-17|frank.wilson@mavenhighschool.com   |
 7|Grace Lee      |         12|3.0|Yes         |2006-12-02|grace.lee@mavenhighschool.com      |
 8|Henry Taylor   |          9|3.0|Yes         |2009-06-08|                                   |
 9|Isabella Moore |         10|2.8|Yes         |2008-01-19|isabella.moore@mavenhighschool.com |
10|Jack Thompson  |         11|2.9|Yes         |2007-04-25|jack.thompson@mavenhighschool.com  |
11|Karen White    |          9|3.4|No          |2009-09-10|karen.white@mavenhighschool.edu    |
12|Liam Green     |         10|4.0|Yes         |2008-08-03|liam.green@mavenhighschool.com     |
13|Mia Harris     |         11|3.0|No          |2007-02-28|mia.harris@mavenhighschool.com     |
14|Noah Scott     |         12|3.3|No          |2006-10-15|noah.scott@mavenparkdistrict.com   |
15|Olivia Adams   |          9|3.7|Yes         |2009-12-11|olivia.adams@mavenhighschool.edu   |
16|Peter Park     |         12|2.9|Yes         |2006-02-11|peter.park@mavenhighschool.com     |
17|Noah Scott     |         12|3.3|No          |2006-10-15|noah.scott@mavenhighschool.com     |
>>>
```

[^^^](#SQL_for_Data_Analysis)

---

#### 03

```sql
select s.grade_level,
avg(s.gpa) as avg_gpa
from students s 
where school_lunch = 'Yes'
group by grade_level 
having avg_gpa < 3.3
order by grade_level;

>>>
grade_level|avg_gpa|
-----------+-------+
         11|2.90000|
         12|3.16667|
>>>
```

```sql
-- common sql keywords

-- distinct return unique values
select distinct grade_level
from students;

grade_level|
-----------+
         10|
         11|
         12|
          9|

-- count, sum, avg, min, max are used ti make calculation
select count(distinct grade_level)
from students;

count(distinct grade_level)|
---------------------------+
                          4|
```

```sql
select max(gpa) - min(gpa)
from students s 

max(gpa) - min(gpa)|
-------------------+
                1.3|
```

```sql
select *
from students 
where grade_level < 12 and school_lunch = 'Yes'

>>>
id|student_name  |grade_level|gpa|school_lunch|birthday  |email                             |
--+--------------+-----------+---+------------+----------+----------------------------------+
 1|Abby Johnson  |         10|3.1|Yes         |2008-05-14|abby.johnson@mavenhighschool.com  |
 4|Daniel Brown  |          9|3.5|Yes         |2009-03-10|daniel.brown@mavenhighschool.edu  |
 8|Henry Taylor  |          9|3.0|Yes         |2009-06-08|                                  |
 9|Isabella Moore|         10|2.8|Yes         |2008-01-19|isabella.moore@mavenhighschool.com|
10|Jack Thompson |         11|2.9|Yes         |2007-04-25|jack.thompson@mavenhighschool.com |
12|Liam Green    |         10|4.0|Yes         |2008-08-03|liam.green@mavenhighschool.com    |
15|Olivia Adams  |          9|3.7|Yes         |2009-12-11|olivia.adams@mavenhighschool.edu  |
>>>

select *
from students 
where grade_level in (10, 11, 12)

>>>
id|student_name   |grade_level|gpa|school_lunch|birthday  |email                              |
--+---------------+-----------+---+------------+----------+-----------------------------------+
 1|Abby Johnson   |         10|3.1|Yes         |2008-05-14|abby.johnson@mavenhighschool.com   |
 2|Bob Smith      |         11|3.1|No          |2007-09-30|bob.smith@mavenhighschool.com      |
 3|Catherine Davis|         12|3.6|Yes         |2006-11-21|catherine.davis@mavenhighschool.com|
 5|Eva Martinez   |         10|2.7|No          |2008-02-05|eva.martinez@mavenhighschool.com   |
 6|Frank Wilson   |         11|3.2|No          |2007-07-17|frank.wilson@mavenhighschool.com   |
 7|Grace Lee      |         12|3.0|Yes         |2006-12-02|grace.lee@mavenhighschool.com      |
 9|Isabella Moore |         10|2.8|Yes         |2008-01-19|isabella.moore@mavenhighschool.com |
10|Jack Thompson  |         11|2.9|Yes         |2007-04-25|jack.thompson@mavenhighschool.com  |
12|Liam Green     |         10|4.0|Yes         |2008-08-03|liam.green@mavenhighschool.com     |
13|Mia Harris     |         11|3.0|No          |2007-02-28|mia.harris@mavenhighschool.com     |
14|Noah Scott     |         12|3.3|No          |2006-10-15|noah.scott@mavenparkdistrict.com   |
>>>

select *
from students 
where email like '%.com'

>>>
id|student_name   |grade_level|gpa|school_lunch|birthday  |email                              |
--+---------------+-----------+---+------------+----------+-----------------------------------+
 1|Abby Johnson   |         10|3.1|Yes         |2008-05-14|abby.johnson@mavenhighschool.com   |
 2|Bob Smith      |         11|3.1|No          |2007-09-30|bob.smith@mavenhighschool.com      |
 3|Catherine Davis|         12|3.6|Yes         |2006-11-21|catherine.davis@mavenhighschool.com|
 5|Eva Martinez   |         10|2.7|No          |2008-02-05|eva.martinez@mavenhighschool.com   |
 6|Frank Wilson   |         11|3.2|No          |2007-07-17|frank.wilson@mavenhighschool.com   |
 7|Grace Lee      |         12|3.0|Yes         |2006-12-02|grace.lee@mavenhighschool.com      |
 9|Isabella Moore |         10|2.8|Yes         |2008-01-19|isabella.moore@mavenhighschool.com |
10|Jack Thompson  |         11|2.9|Yes         |2007-04-25|jack.thompson@mavenhighschool.com  |
12|Liam Green     |         10|4.0|Yes         |2008-08-03|liam.green@mavenhighschool.com     |
>>>
```

```sql
select student_name, gpa
from students 
order by gpa desc

>>>
student_name   |gpa|
---------------+---+
Liam Green     |4.0|
Olivia Adams   |3.7|
Catherine Davis|3.6|
Daniel Brown   |3.5|
Karen White    |3.4|
Noah Scott     |3.3|
Noah Scott     |3.3|
Frank Wilson   |3.2|
>>>

select student_name, gpa
from students 
order by gpa asc

>>>
student_name   |gpa|
---------------+---+
Eva Martinez   |2.7|
Isabella Moore |2.8|
Jack Thompson  |2.9|
Peter Park     |2.9|
Grace Lee      |3.0|
Henry Taylor   |3.0|
Mia Harris     |3.0|
Abby Johnson   |3.1|
Bob Smith      |3.1|
>>>

-- only five rows 
select * 
from students 
limit 5

>>>
id|student_name   |grade_level|gpa|school_lunch|birthday  |email                              |
--+---------------+-----------+---+------------+----------+-----------------------------------+
 1|Abby Johnson   |         10|3.1|Yes         |2008-05-14|abby.johnson@mavenhighschool.com   |
 2|Bob Smith      |         11|3.1|No          |2007-09-30|bob.smith@mavenhighschool.com      |
 3|Catherine Davis|         12|3.6|Yes         |2006-11-21|catherine.davis@mavenhighschool.com|
 4|Daniel Brown   |          9|3.5|Yes         |2009-03-10|daniel.brown@mavenhighschool.edu   |
 5|Eva Martinez   |         10|2.7|No          |2008-02-05|eva.martinez@mavenhighschool.com   |
>>>
```

```sql
select student_name, grade_level,
	case
		when grade_level = 9 then 'Freshman'
		when grade_level = 10 then 'Sophmore'
		when grade_level = 11 then 'Junior'
		else 'Senior'
	end as student_class
from students;

>>>
student_name   |grade_level|student_class|
---------------+-----------+-------------+
Abby Johnson   |         10|Sophmore     |
Bob Smith      |         11|Junior       |
Catherine Davis|         12|Senior       |
Daniel Brown   |          9|Freshman     |
Eva Martinez   |         10|Sophmore     |
Frank Wilson   |         11|Junior       |
Grace Lee      |         12|Senior       |
Henry Taylor   |          9|Freshman     |
Isabella Moore |         10|Sophmore     |
Jack Thompson  |         11|Junior       |
>>>
```	



[^^^](#SQL_for_Data_Analysis)

---

