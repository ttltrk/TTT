
###### [SQL](https://github.com/ttltrk/TTT/tree/master/SQL/SQL.md)

---

#### SQL_for_Data_Analysis

---

* [U_LINK]()

---

* [01_INTRO](#01_INTRO)
* [03_BASICS](#03_BASICS)
* [04_MULTI_TABLE_ANALYSIS](#04_MULTI_TABLE_ANALYSIS)
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

#### 03_BASICS

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

```sql
select *
from students 
where school_lunch = 'Yes'
order by grade_level 

id|student_name   |grade_level|gpa|school_lunch|birthday  |email                              |
--+---------------+-----------+---+------------+----------+-----------------------------------+
 4|Daniel Brown   |          9|3.5|Yes         |2009-03-10|daniel.brown@mavenhighschool.edu   |
 8|Henry Taylor   |          9|3.0|Yes         |2009-06-08|                                   |
15|Olivia Adams   |          9|3.7|Yes         |2009-12-11|olivia.adams@mavenhighschool.edu   |
 1|Abby Johnson   |         10|3.1|Yes         |2008-05-14|abby.johnson@mavenhighschool.com   |
 9|Isabella Moore |         10|2.8|Yes         |2008-01-19|isabella.moore@mavenhighschool.com |
12|Liam Green     |         10|4.0|Yes         |2008-08-03|liam.green@mavenhighschool.com     |
10|Jack Thompson  |         11|2.9|Yes         |2007-04-25|jack.thompson@mavenhighschool.com  |
 3|Catherine Davis|         12|3.6|Yes         |2006-11-21|catherine.davis@mavenhighschool.com|
 7|Grace Lee      |         12|3.0|Yes         |2006-12-02|grace.lee@mavenhighschool.com      |
16|Peter Park     |         12|2.9|Yes         |2006-02-11|peter.park@mavenhighschool.com     |

select grade_level, AVG(gpa)
from students 
where school_lunch = 'Yes'
group by grade_level
order by grade_level 

grade_level|AVG(gpa)|
-----------+--------+
          9| 3.40000|
         10| 3.30000|
         11| 2.90000|
         12| 3.16667|
         
select grade_level, AVG(gpa) as avg_gpa
from students 
where school_lunch = 'Yes'
group by grade_level
having avg_gpa < 3.3
order by grade_level 

grade_level|avg_gpa|
-----------+-------+
         11|2.90000|
         12|3.16667|
```

```sql
select distinct grade_level
from students s 
         
grade_level|
-----------+
         11|
          9|
         10|
         12|

select count(distinct grade_level)
from students s 

count|
-----+
    4|
    
select MAX(gpa), MIN(gpa)
from students s 

max|min|
---+---+
4.0|2.7|

select MAX(gpa) - MIN(gpa) as gpa_range
from students s 

gpa_range|
---------+
      1.3|
```

```sql      
-- AND
select * 
from students s 
where grade_level < 12

id|student_name  |grade_level|gpa|school_lunch|birthday  |email                             |
--+--------------+-----------+---+------------+----------+----------------------------------+
 1|Abby Johnson  |         10|3.1|Yes         |2008-05-14|abby.johnson@mavenhighschool.com  |
 2|Bob Smith     |         11|3.1|No          |2007-09-30|bob.smith@mavenhighschool.com     |
 4|Daniel Brown  |          9|3.5|Yes         |2009-03-10|daniel.brown@mavenhighschool.edu  |
 5|Eva Martinez  |         10|2.7|No          |2008-02-05|eva.martinez@mavenhighschool.com  |
 6|Frank Wilson  |         11|3.2|No          |2007-07-17|frank.wilson@mavenhighschool.com  |
 8|Henry Taylor  |          9|3.0|Yes         |2009-06-08|                                  |
 9|Isabella Moore|         10|2.8|Yes         |2008-01-19|isabella.moore@mavenhighschool.com|
 
select * 
from students s 
where grade_level < 12 and school_lunch = 'Yes'

id|student_name  |grade_level|gpa|school_lunch|birthday  |email                             |
--+--------------+-----------+---+------------+----------+----------------------------------+
 1|Abby Johnson  |         10|3.1|Yes         |2008-05-14|abby.johnson@mavenhighschool.com  |
 4|Daniel Brown  |          9|3.5|Yes         |2009-03-10|daniel.brown@mavenhighschool.edu  |
 8|Henry Taylor  |          9|3.0|Yes         |2009-06-08|                                  |
 9|Isabella Moore|         10|2.8|Yes         |2008-01-19|isabella.moore@mavenhighschool.com|
10|Jack Thompson |         11|2.9|Yes         |2007-04-25|jack.thompson@mavenhighschool.com |
12|Liam Green    |         10|4.0|Yes         |2008-08-03|liam.green@mavenhighschool.com    |
15|Olivia Adams  |          9|3.7|Yes         |2009-12-11|olivia.adams@mavenhighschool.edu  |
```

```sql
-- IN
select * 
from students s 
where grade_level in (9, 10, 11)

id|student_name  |grade_level|gpa|school_lunch|birthday  |email                             |
--+--------------+-----------+---+------------+----------+----------------------------------+
 1|Abby Johnson  |         10|3.1|Yes         |2008-05-14|abby.johnson@mavenhighschool.com  |
 2|Bob Smith     |         11|3.1|No          |2007-09-30|bob.smith@mavenhighschool.com     |
 4|Daniel Brown  |          9|3.5|Yes         |2009-03-10|daniel.brown@mavenhighschool.edu  |
 5|Eva Martinez  |         10|2.7|No          |2008-02-05|eva.martinez@mavenhighschool.com  |
 6|Frank Wilson  |         11|3.2|No          |2007-07-17|frank.wilson@mavenhighschool.com  |
 8|Henry Taylor  |          9|3.0|Yes         |2009-06-08|                                  |
 9|Isabella Moore|         10|2.8|Yes         |2008-01-19|isabella.moore@mavenhighschool.com|
```

```sql
-- IS NULL
select * 
from students s 
where email is  null

id|student_name|grade_level|gpa|school_lunch|birthday  |email|
--+------------+-----------+---+------------+----------+-----+
 8|Henry Taylor|          9|3.0|Yes         |2009-06-08|     |
 
select * 
from students s 
where email is not null

id|student_name   |grade_level|gpa|school_lunch|birthday  |email                              |
--+---------------+-----------+---+------------+----------+-----------------------------------+
 1|Abby Johnson   |         10|3.1|Yes         |2008-05-14|abby.johnson@mavenhighschool.com   |
 2|Bob Smith      |         11|3.1|No          |2007-09-30|bob.smith@mavenhighschool.com      |
 3|Catherine Davis|         12|3.6|Yes         |2006-11-21|catherine.davis@mavenhighschool.com|
 4|Daniel Brown   |          9|3.5|Yes         |2009-03-10|daniel.brown@mavenhighschool.edu   |
 5|Eva Martinez   |         10|2.7|No          |2008-02-05|eva.martinez@mavenhighschool.com   |
 6|Frank Wilson   |         11|3.2|No          |2007-07-17|frank.wilson@mavenhighschool.com   |
 7|Grace Lee      |         12|3.0|Yes         |2006-12-02|grace.lee@mavenhighschool.com      |
```

```sql
-- LIKE
select * 
from students s 
where email like '%.edu'

id|student_name|grade_level|gpa|school_lunch|birthday  |email                           |
--+------------+-----------+---+------------+----------+--------------------------------+
 4|Daniel Brown|          9|3.5|Yes         |2009-03-10|daniel.brown@mavenhighschool.edu|
11|Karen White |          9|3.4|No          |2009-09-10|karen.white@mavenhighschool.edu |
15|Olivia Adams|          9|3.7|Yes         |2009-12-11|olivia.adams@mavenhighschool.edu|
```

```sql
-- ORDER BY
select * 
from students s 
order by gpa 

id|student_name   |grade_level|gpa|school_lunch|birthday  |email                              |
--+---------------+-----------+---+------------+----------+-----------------------------------+
 5|Eva Martinez   |         10|2.7|No          |2008-02-05|eva.martinez@mavenhighschool.com   |
 9|Isabella Moore |         10|2.8|Yes         |2008-01-19|isabella.moore@mavenhighschool.com |
10|Jack Thompson  |         11|2.9|Yes         |2007-04-25|jack.thompson@mavenhighschool.com  |
16|Peter Park     |         12|2.9|Yes         |2006-02-11|peter.park@mavenhighschool.com     |
13|Mia Harris     |         11|3.0|No          |2007-02-28|mia.harris@mavenhighschool.com     |

select * 
from students s 
order by gpa desc 

id|student_name   |grade_level|gpa|school_lunch|birthday  |email                              |
--+---------------+-----------+---+------------+----------+-----------------------------------+
12|Liam Green     |         10|4.0|Yes         |2008-08-03|liam.green@mavenhighschool.com     |
15|Olivia Adams   |          9|3.7|Yes         |2009-12-11|olivia.adams@mavenhighschool.edu   |
 3|Catherine Davis|         12|3.6|Yes         |2006-11-21|catherine.davis@mavenhighschool.com|
 4|Daniel Brown   |          9|3.5|Yes         |2009-03-10|daniel.brown@mavenhighschool.edu   |
11|Karen White    |          9|3.4|No          |2009-09-10|karen.white@mavenhighschool.edu    |
```

```sql
-- CASE
select student_name, grade_level,
	case
		when grade_level = 9 then 'Freshman'
		when grade_level = 10 then 'Sophmore'
		when grade_level = 11 then 'Junior'
		else 'Senior'
	end as student_class
from students; 

student_name   |grade_level|student_class|
---------------+-----------+-------------+
Abby Johnson   |         10|Sophmore     |
Bob Smith      |         11|Junior       |
Catherine Davis|         12|Senior       |
Daniel Brown   |          9|Freshman     |
Eva Martinez   |         10|Sophmore     |
Frank Wilson   |         11|Junior       |
```


[^^^](#SQL_for_Data_Analysis)

---

#### 04_MULTI_TABLE_ANALYSIS

```sql
select * from happiness_scores hs limit 5

year|country    |region                      |happiness_score|gdp_per_capita|social_support|healthy_life_expectancy|freedom_to_make_life_choices|generosity|perceptions_of_corruption|
----+-----------+----------------------------+---------------+--------------+--------------+-----------------------+----------------------------+----------+-------------------------+
2015|Afghanistan|South Asia                  |          3.575|       0.31982|       0.30285|                0.30335|                     0.23414|   0.36510|                  0.09719|
2015|Albania    |Central and Eastern Europe  |          4.959|       0.87867|       0.80434|                0.81325|                     0.35733|   0.14272|                  0.06413|
2015|Algeria    |Middle East and North Africa|          5.605|       0.93929|       1.07772|                0.61766|                     0.28579|   0.07822|                  0.17383|
2015|Angola     |Sub-Saharan Africa          |          4.033|       0.75778|       0.86040|                0.16683|                     0.10384|   0.12344|                  0.07122|
2015|Argentina  |Latin America and Caribbean |          6.574|       1.05351|       1.24823|                0.78723|                     0.44974|   0.11451|                  0.08484|

select * from country_stats cs limit 5

country    |continent|population|urban_population|land_area_km2|unemployment_rate|fertility_rate|infant_mortality|life_expectancy|physicians_per_thousand|
-----------+---------+----------+----------------+-------------+-----------------+--------------+----------------+---------------+-----------------------+
Afghanistan|Asia     |  38041754|         9797273|       652230|             0.11|          4.47|           47.90|          64.50|                   0.28|
Albania    |Europe   |   2854191|         1747593|        28748|             0.12|          1.62|            7.80|          78.50|                   1.20|
Algeria    |Africa   |  43053054|        31510100|      2381741|             0.12|          3.02|           20.10|          76.70|                   1.72|
Andorra    |Europe   |     77142|           67873|          468|                 |          1.27|            2.70|               |                   3.33|
Angola     |Africa   |  31825295|        21061025|      1246700|             0.07|          5.52|           51.60|          60.80|                   0.21|
```

```sql
-- LEFT JOIN
select hs.year, hs.country, hs.happiness_score, cs.continent, cs.population 
from happiness_scores hs 
left join country_stats cs 
on hs.country = cs.country
limit 5

year|country    |happiness_score|continent    |population|
----+-----------+---------------+-------------+----------+
2015|Afghanistan|          3.575|Asia         |  38041754|
2015|Albania    |          4.959|Europe       |   2854191|
2015|Algeria    |          5.605|Africa       |  43053054|
2015|Angola     |          4.033|Africa       |  31825295|
2015|Argentina  |          6.574|South America|  44938712|
```

```sql
/*
 * INNER JOIN - returns records that exist in BOTH tables, and excludes unmatched records from either table
 * LEFT JOIN - return all records from the left table , and any matching records from the right table
 * RIGHT JOIN - return all records from the right table , and any matching records from the left table
 * FULL OUTER JOIN - returns all records from both tables, including non-matching records
 */
```

```sql
select hs.year, hs.country, hs.happiness_score, cs.country, cs.continent
from happiness_scores hs 
inner join country_stats cs 
on hs.country = cs.country
limit 10

year|country    |happiness_score|country    |continent        |
----+-----------+---------------+-----------+-----------------+
2015|Afghanistan|          3.575|Afghanistan|Asia             |
2015|Albania    |          4.959|Albania    |Europe           |
2015|Algeria    |          5.605|Algeria    |Africa           |
2015|Angola     |          4.033|Angola     |Africa           |
2015|Argentina  |          6.574|Argentina  |South America    |
2015|Armenia    |          4.350|Armenia    |Asia             |
2015|Australia  |          7.284|Australia  |Australia/Oceania|
2015|Austria    |          7.200|Austria    |Europe           |
2015|Azerbaijan |          5.212|Azerbaijan |Asia             |
2015|Bahrain    |          5.960|Bahrain    |Asia             |

-----------------------------------------------------------------------------

select hs.year, hs.country, hs.happiness_score, cs.country, cs.continent
from happiness_scores hs 
left join country_stats cs 
on hs.country = cs.country
limit 10

year|country    |happiness_score|country    |continent        |
----+-----------+---------------+-----------+-----------------+
2015|Afghanistan|          3.575|Afghanistan|Asia             |
2015|Albania    |          4.959|Albania    |Europe           |
2015|Algeria    |          5.605|Algeria    |Africa           |
2015|Angola     |          4.033|Angola     |Africa           |
2015|Argentina  |          6.574|Argentina  |South America    |
2015|Armenia    |          4.350|Armenia    |Asia             |
2015|Australia  |          7.284|Australia  |Australia/Oceania|
2015|Austria    |          7.200|Austria    |Europe           |
2015|Azerbaijan |          5.212|Azerbaijan |Asia             |
2015|Bahrain    |          5.960|Bahrain    |Asia             |

select hs.year, hs.country, hs.happiness_score, cs.country, cs.continent
from happiness_scores hs 
left join country_stats cs 
on hs.country = cs.country
where cs.country is null
limit 10

year|country                  |happiness_score|country|continent|
----+-------------------------+---------------+-------+---------+
2015|Congo (Brazzaville)      |          3.989|       |         |
2015|Congo (Kinshasa)         |          4.517|       |         |
2015|Hong Kong S.A.R. of China|          5.474|       |         |
2015|Ireland                  |          6.940|       |         |
2015|Ivory Coast              |          3.655|       |         |
2015|Kosovo                   |          5.589|       |         |
2015|North Cyprus             |          5.695|       |         |
2015|Palestinian Territories  |          4.715|       |         |
2015|Somaliland region        |          5.057|       |         |
2015|Swaziland                |          4.867|       |         |

select distinct hs.country
from happiness_scores hs 
left join country_stats cs 
on hs.country = cs.country
where cs.country is null
limit 10

country                  |
-------------------------+
Congo                    |
Congo (Brazzaville)      |
Congo (Kinshasa)         |
Czechia                  |
Gambia                   |
Hong Kong S.A.R. of China|
Ireland                  |
Ivory Coast              |
Kosovo                   |
North Cyprus             |

-----------------------------------------------------------------------------

select hs.year, hs.country, hs.happiness_score, cs.country, cs.continent
from happiness_scores hs 
right join country_stats cs 
on hs.country = cs.country
limit 10

year|country    |happiness_score|country    |continent        |
----+-----------+---------------+-----------+-----------------+
2015|Afghanistan|          3.575|Afghanistan|Asia             |
2015|Albania    |          4.959|Albania    |Europe           |
2015|Algeria    |          5.605|Algeria    |Africa           |
2015|Angola     |          4.033|Angola     |Africa           |
2015|Argentina  |          6.574|Argentina  |South America    |
2015|Armenia    |          4.350|Armenia    |Asia             |
2015|Australia  |          7.284|Australia  |Australia/Oceania|
2015|Austria    |          7.200|Austria    |Europe           |
2015|Azerbaijan |          5.212|Azerbaijan |Asia             |
2015|Bahrain    |          5.960|Bahrain    |Asia             |

select hs.year, hs.country, hs.happiness_score, cs.country, cs.continent
from happiness_scores hs 
right join country_stats cs 
on hs.country = cs.country
where hs.country is null
limit 10

year|country|happiness_score|country         |continent        |
----+-------+---------------+----------------+-----------------+
    |       |               |Eritrea         |Africa           |
    |       |               |Samoa           |Australia/Oceania|
    |       |               |Cape Verde      |Africa           |
    |       |               |Guinea-Bissau   |Africa           |
    |       |               |Liechtenstein   |Europe           |
    |       |               |Marshall Islands|Australia/Oceania|
    |       |               |San Marino      |Europe           |
    |       |               |Solomon Islands |Australia/Oceania|
    |       |               |Nauru           |Australia/Oceania|
    |       |               |Dominica        |North America    |
    
select distinct cs.country
from happiness_scores hs 
right join country_stats cs 
on hs.country = cs.country
where hs.country is null
limit 10

country                         |
--------------------------------+
Andorra                         |
Antigua and Barbuda             |
Barbados                        |
Brunei                          |
Cape Verde                      |
Cuba                            |
Democratic Republic of the Congo|
Dominica                        |
East Timor                      |
Equatorial Guinea               |

-----------------------------------------------------------------------------

select hs.year, hs.country, hs.happiness_score, cs.country, cs.continent
from happiness_scores hs 
full outer join country_stats cs 
on hs.country = cs.country
limit 10

year|country    |happiness_score|country    |continent        |
----+-----------+---------------+-----------+-----------------+
2015|Afghanistan|          3.575|Afghanistan|Asia             |
2015|Albania    |          4.959|Albania    |Europe           |
2015|Algeria    |          5.605|Algeria    |Africa           |
2015|Angola     |          4.033|Angola     |Africa           |
2015|Argentina  |          6.574|Argentina  |South America    |
2015|Armenia    |          4.350|Armenia    |Asia             |
2015|Australia  |          7.284|Australia  |Australia/Oceania|
2015|Austria    |          7.200|Austria    |Europe           |
2015|Azerbaijan |          5.212|Azerbaijan |Asia             |
2015|Bahrain    |          5.960|Bahrain    |Asia             |
```

```sql
select p.product_id, p.product_name, o.product_id as product_id_in_orders 
from products p 
left join orders o 
on p.product_id = o.product_id 
where o.product_id is null 

product_id   |product_name   |product_id_in_orders|
-------------+---------------+--------------------+
SUG-PIX-62000|Pixy Stix      |                    |
SUG-LOO-45000|Loopy Lollipops|                    |
SUG-NER-92001|Tropical Nerds |                    |
```

```sql
-- JOINING MULTIPLE COLUMNS

SELECT year, country, happiness_score
from happiness_scores hs 

year|country                  |happiness_score|
----+-------------------------+---------------+
2015|Afghanistan              |          3.575|
2015|Albania                  |          4.959|
2015|Algeria                  |          5.605|
2015|Angola                   |          4.033|
2015|Argentina                |          6.574|
2015|Armenia                  |          4.350|

select year, country_name, inflation_rate
from inflation_rates

year|country_name  |inflation_rate|
----+--------------+--------------+
2015|China         |           1.4|
2015|India         |           4.9|
2015|United States |           0.1|
2015|Indonesia     |           6.4|
2015|Pakistan      |           4.5|
2015|Brazil        |           9.0|

select hs.year, hs.country, hs.happiness_score, ir.inflation_rate 
from happiness_scores hs 
inner join inflation_rates ir 
on hs.year = ir.year and hs.country = ir.country_name 

year|country       |happiness_score|inflation_rate|
----+--------------+---------------+--------------+
2015|China         |          5.140|           1.4|
2015|India         |          4.565|           4.9|
2015|United States |          7.119|           0.1|
2015|Indonesia     |          5.399|           6.4|
2015|Pakistan      |          5.194|           4.5|
2015|Brazil        |          6.983|           9.0|
```

```sql
-- JOINING MULTIPLE COLUMNS
SELECT * from happiness_scores hs 

year|country                  |region                            |happiness_score|gdp_per_capita|social_support|healthy_life_expectancy|freedom_to_make_life_choices|generosity|perceptions_of_corruption|
----+-------------------------+----------------------------------+---------------+--------------+--------------+-----------------------+----------------------------+----------+-------------------------+
2015|Afghanistan              |South Asia                        |          3.575|       0.31982|       0.30285|                0.30335|                     0.23414|   0.36510|                  0.09719|
2015|Albania                  |Central and Eastern Europe        |          4.959|       0.87867|       0.80434|                0.81325|                     0.35733|   0.14272|                  0.06413|
2015|Algeria                  |Middle East and North Africa      |          5.605|       0.93929|       1.07772|                0.61766|                     0.28579|   0.07822|                  0.17383|

select * from inflation_rates ir

year|country_name  |inflation_rate|
----+--------------+--------------+
2015|China         |           1.4|
2015|India         |           4.9|
2015|United States |           0.1|
2015|Indonesia     |           6.4|

select * from country_stats cs 

country                         |continent        |population|urban_population|land_area_km2|unemployment_rate|fertility_rate|infant_mortality|life_expectancy|physicians_per_thousand|
--------------------------------+-----------------+----------+----------------+-------------+-----------------+--------------+----------------+---------------+-----------------------+
Afghanistan                     |Asia             |  38041754|         9797273|       652230|             0.11|          4.47|           47.90|          64.50|                   0.28|
Albania                         |Europe           |   2854191|         1747593|        28748|             0.12|          1.62|            7.80|          78.50|                   1.20|
Algeria                         |Africa           |  43053054|        31510100|      2381741|             0.12|          3.02|           20.10|          76.70|                   1.72|
Andorra                         |Europe           |     77142|           67873|          468|                 |          1.27|            2.70|               |                   3.33|

select * 
from happiness_scores hs 
	inner join inflation_rates ir 
	on hs.country = ir.country_name and hs.year = ir.year

year|country       |region                      |happiness_score|gdp_per_capita|social_support|healthy_life_expectancy|freedom_to_make_life_choices|generosity|perceptions_of_corruption|year|country_name  |inflation_rate|
----+--------------+----------------------------+---------------+--------------+--------------+-----------------------+----------------------------+----------+-------------------------+----+--------------+--------------+
2015|China         |East Asia                   |          5.140|       0.89012|       0.94675|                0.81658|                     0.51697|   0.08185|                  0.02781|2015|China         |           1.4|
2015|India         |South Asia                  |          4.565|       0.64499|       0.38174|                0.51529|                     0.39786|   0.26475|                  0.08492|2015|India         |           4.9|
2015|United States |North America and ANZ       |          7.119|       1.39451|       1.24711|                0.86179|                     0.54604|   0.40105|                  0.15890|2015|United States |           0.1|
2015|Indonesia     |Southeast Asia              |          5.399|       0.82827|       1.08708|                0.63793|                     0.46611|   0.51535|                         |2015|Indonesia     |           6.4|
2015|Pakistan      |South Asia                  |          5.194|       0.59543|       0.41411|                0.51466|                     0.12102|   0.33671|                  0.10464|2015|Pakistan      |           4.5|
```

```sql
-- JOINING MULTIPLE TABLES
	
SELECT * from happiness_scores hs 

year|country                  |region                            |happiness_score|gdp_per_capita|social_support|healthy_life_expectancy|freedom_to_make_life_choices|generosity|perceptions_of_corruption|
----+-------------------------+----------------------------------+---------------+--------------+--------------+-----------------------+----------------------------+----------+-------------------------+
2015|Afghanistan              |South Asia                        |          3.575|       0.31982|       0.30285|                0.30335|                     0.23414|   0.36510|                  0.09719|
2015|Albania                  |Central and Eastern Europe        |          4.959|       0.87867|       0.80434|                0.81325|                     0.35733|   0.14272|                  0.06413|
2015|Algeria                  |Middle East and North Africa      |          5.605|       0.93929|       1.07772|                0.61766|                     0.28579|   0.07822|                  0.17383|

select * from inflation_rates ir

year|country_name  |inflation_rate|
----+--------------+--------------+
2015|China         |           1.4|
2015|India         |           4.9|
2015|United States |           0.1|
2015|Indonesia     |           6.4|

select * from country_stats cs 

country                         |continent        |population|urban_population|land_area_km2|unemployment_rate|fertility_rate|infant_mortality|life_expectancy|physicians_per_thousand|
--------------------------------+-----------------+----------+----------------+-------------+-----------------+--------------+----------------+---------------+-----------------------+
Afghanistan                     |Asia             |  38041754|         9797273|       652230|             0.11|          4.47|           47.90|          64.50|                   0.28|
Albania                         |Europe           |   2854191|         1747593|        28748|             0.12|          1.62|            7.80|          78.50|                   1.20|
Algeria                         |Africa           |  43053054|        31510100|      2381741|             0.12|          3.02|           20.10|          76.70|                   1.72|
Andorra                         |Europe           |     77142|           67873|          468|                 |          1.27|            2.70|               |                   3.33|


select hs.year, hs.country, hs.happiness_score, cs.continent, ir.inflation_rate 
from happiness_scores hs 
	left join country_stats cs 
		on hs.country = cs.country 
	left join inflation_rates ir 
		on hs."year" = ir."year" and hs.country = ir.country_name 
		
year|country                  |happiness_score|continent        |inflation_rate|
----+-------------------------+---------------+-----------------+--------------+
2015|Afghanistan              |          3.575|Asia             |              |
2015|Albania                  |          4.959|Europe           |              |
2015|Algeria                  |          5.605|Africa           |              |
2015|Angola                   |          4.033|Africa           |              |
2015|Argentina                |          6.574|South America    |              |
2015|Armenia                  |          4.350|Asia             |              |
2015|Australia                |          7.284|Australia/Oceania|              |
2015|Austria                  |          7.200|Europe           |              |
2015|Azerbaijan               |          5.212|Asia             |              |
2015|Bahrain                  |          5.960|Asia             |              |
2015|Bangladesh               |          4.694|Asia             |           6.1|
2015|Belarus                  |          5.813|Europe           |              |
2015|Belgium                  |          6.937|Europe           |              |
```

[^^^](#SQL_for_Data_Analysis)

---

[^^^](#SQL_for_Data_Analysis)

---

[^^^](#SQL_for_Data_Analysis)

---

[^^^](#SQL_for_Data_Analysis)

---

[^^^](#SQL_for_Data_Analysis)

---

[^^^](#SQL_for_Data_Analysis)

---

[^^^](#SQL_for_Data_Analysis)

---

[^^^](#SQL_for_Data_Analysis)

---

[^^^](#SQL_for_Data_Analysis)

---

[^^^](#SQL_for_Data_Analysis)

---

[^^^](#SQL_for_Data_Analysis)

---

[^^^](#SQL_for_Data_Analysis)

---

