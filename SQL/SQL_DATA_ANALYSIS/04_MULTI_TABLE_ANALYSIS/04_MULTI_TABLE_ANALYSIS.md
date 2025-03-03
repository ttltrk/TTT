
---

###### [SQL_for_Data_Analysis](https://github.com/ttltrk/TTT/blob/master/SQL/SQL_DATA_ANALYSIS/SQL_DATA_ANALYSIS.md)

---

#### 04_MULTI_TABLE_ANALYSIS

---

* [JOINS](#JOINS)
* [INNER_JOIN](#INNER_JOIN)
* [LEFT_JOIN](#LEFT_JOIN)
* [RIGHT_JOIN](#RIGHT_JOIN)
* [FULL_OUTER_JOIN](#FULL_OUTER_JOIN)
* [JOIN_MULTI_COLUMNS](#JOIN_MULTI_COLUMNS)
* [JOIN_MULTI_TABLES](#JOIN_MULTI_TABLES)
* [SELF_JOIN](#SELF_JOIN)
* [CROSS_JOIN](#CROSS_JOIN)
* [UNION_UNION_ALL](#UNION_UNION_ALL)
* [SUBQUERY_BASICS](#SUBQUERY_BASICS)
* [SUBQUERY_IN_SELECT](#SUBQUERY_IN_SELECT)
* [SUBQUERY_IN_FROM](#SUBQUERY_IN_FROM)
* [MULTI_SUBQUERIES](#MULTI_SUBQUERIES)
* [SUBQUERY_IN_WHERE_HAVING](#SUBQUERY_IN_WHERE_HAVING)
* [ANY_ALL](#ANY_ALL)
* [CTE](#CTE)
* []()
* []()
* []()
---

##### JOINS

```sql
/*
 * INNER JOIN - returns records that exist in BOTH tables, and excludes unmatched records from either table
 * LEFT JOIN - return all records from the left table , and any matching records from the right table
 * RIGHT JOIN - return all records from the right table , and any matching records from the left table
 * FULL OUTER JOIN - returns all records from both tables, including non-matching records
 */
```

[^^^](#04_MULTI_TABLE_ANALYSIS)

---

##### INNER_JOIN

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
```

[^^^](#04_MULTI_TABLE_ANALYSIS)

---

##### LEFT_JOIN

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
```

[^^^](#04_MULTI_TABLE_ANALYSIS)

---

##### RIGHT_JOIN

```sql
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
```

[^^^](#04_MULTI_TABLE_ANALYSIS)

---

##### FULL_OUTER_JOIN

```sql
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

[^^^](#04_MULTI_TABLE_ANALYSIS)

---

##### JOIN_MULTI_COLUMNS

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

[^^^](#04_MULTI_TABLE_ANALYSIS)

---

##### JOIN_MULTI_TABLES

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

[^^^](#04_MULTI_TABLE_ANALYSIS)

---

##### SELF_JOIN

```sql
-- SELF JOIN

/*
 * A self join lets you join a table with itself
 *  - combine a table with itself based on a matching column
 * 	- filter on the resulting rows based on some criteria 
 */
```

[^^^](#04_MULTI_TABLE_ANALYSIS)

---

##### CROSS_JOIN

```sql
-- CROSS JOIN

/*
 * A cross join returns all combinations of rows within two or more tables
 * 
 * 
 */
```

[^^^](#04_MULTI_TABLE_ANALYSIS)

---

##### UNION_UNION_ALL

```sql

-- UNION vs UNION ALL

/*
 * Use union to stack multiple tables or queries on top of one another
 * union removes duplicate values, while union all retains them
 * 
 */

select * from tops

id|item   |
--+-------+
 1|T-Shirt|
 2|Hoodie |
 
select * from outerwear
 
id|item  |
--+------+
 2|Hoodie|
 3|Jacket|
 4|Coat  |
 
select * from tops

union 
 
select * from outerwear
 
id|item   |
--+-------+
 1|T-Shirt|
 4|Coat   |
 3|Jacket |
 2|Hoodie |
 
 
select * from tops

union all
 
select * from outerwear

id|item   |
--+-------+
 1|T-Shirt|
 2|Hoodie |
 2|Hoodie |
 3|Jacket |
 4|Coat   |
 
select * from happiness_scores hs 

year|country                  |region                            |happiness_score|gdp_per_capita|social_support|healthy_life_expectancy|freedom_to_make_life_choices|generosity|perceptions_of_corruption|
----+-------------------------+----------------------------------+---------------+--------------+--------------+-----------------------+----------------------------+----------+-------------------------+
2015|Afghanistan              |South Asia                        |          3.575|       0.31982|       0.30285|                0.30335|                     0.23414|   0.36510|                  0.09719|
2015|Albania                  |Central and Eastern Europe        |          4.959|       0.87867|       0.80434|                0.81325|                     0.35733|   0.14272|                  0.06413|
2015|Algeria                  |Middle East and North Africa      |          5.605|       0.93929|       1.07772|                0.61766|                     0.28579|   0.07822|                  0.17383|
2015|Angola                   |Sub-Saharan Africa                |          4.033|       0.75778|       0.86040|                0.16683|                     0.10384|   0.12344|                  0.07122|
2015|Argentina                |Latin America and Caribbean       |          6.574|       1.05351|       1.24823|                0.78723|                     0.44974|   0.11451|                  0.08484|
2015|Armenia                  |Central and Eastern Europe        |          4.350|       0.76821|       0.77711|                0.72990|                     0.19847|   0.07855|                  0.03900|
2015|Australia                |North America and ANZ             |          7.284|       1.33358|       1.30923|                0.93156|                     0.65124|   0.43562|                  0.35637|

select * from happiness_scores_current hsc 

country                  |ladder_score|gdp_per_capita|social_support|healthy_life_expectancy|freedom_to_make_life_choices|generosity|perceptions_of_corruption|
-------------------------+------------+--------------+--------------+-----------------------+----------------------------+----------+-------------------------+
Finland                  |       7.741|         1.844|         1.572|                  0.695|                       0.859|     0.142|                    0.546|
Denmark                  |       7.583|         1.908|         1.520|                  0.699|                       0.823|     0.204|                    0.548|
Iceland                  |       7.525|         1.881|         1.617|                  0.718|                       0.819|     0.258|                    0.182|
Sweden                   |       7.344|         1.878|         1.501|                  0.724|                       0.838|     0.221|                    0.524|
Israel                   |       7.341|         1.803|         1.513|                  0.740|                       0.641|     0.153|                    0.193|
Netherlands              |       7.319|         1.901|         1.462|                  0.706|                       0.725|     0.247|                    0.372|


select year, country, happiness_score from happiness_scores hs 
union
select 2024, country, ladder_score from happiness_scores_current hsc 

year|country                  |happiness_score|
----+-------------------------+---------------+
2023|Sweden                   |          7.395|
2024|Algeria                  |          5.364|
2018|Sierra Leone             |          4.571|
2020|Ivory Coast              |          5.233|
2019|Somalia                  |          4.668|
2018|Montenegro               |          5.347|
2015|Sri Lanka                |          4.271|
```

[^^^](#04_MULTI_TABLE_ANALYSIS)

---

##### SUBQUERY_BASICS

```sql
-- SUBQUERY BASICS

select avg(happiness_score) from happiness_scores hs 

avg               |
------------------+
5.4410877834674470|

select happiness_score 
from happiness_scores hs 
where happiness_score > (select avg(happiness_score) from happiness_scores hs) 
order by happiness_score 

happiness_score|
---------------+
          5.456|
          5.458|
          5.459|
          5.466|
          5.466|
          5.467|
          5.467|
```

[^^^](#04_MULTI_TABLE_ANALYSIS)

---

##### SUBQUERY_IN_SELECT

```sql
-- SUBQUERIES in SELECT Clause          
          
select 
	country,
	happiness_score - (select avg(happiness_score) from happiness_scores hs) as diff_from_avg
from happiness_scores hs 
order by happiness_score 

country                 |diff_from_avg      |
------------------------+-------------------+
Afghanistan             |-3.5820877834674470|
Lebanon                 |-3.0490877834674470|
Afghanistan             |-3.0370877834674470|
Afghanistan             |-2.9180877834674470|
Afghanistan             |-2.8740877834674470|
Central African Republic|-2.7480877834674470|
```

```sql
select 
product_id,
product_name, 
unit_price,
(select avg(unit_price) from products p) as avg_unit_price,
unit_price - (select avg(unit_price) from products p) as diff_price
from products p
order by unit_price desc

product_id   |product_name                     |unit_price|avg_unit_price    |diff_price         |
-------------+---------------------------------+----------+------------------+-------------------+
SUG-NER-92001|Tropical Nerds                   |          |4.1723529411764706|                   |
OTH-LIC-15000|Lickable Wallpaper               |     20.00|4.1723529411764706|15.8276470588235294|
SUG-EVE-47000|Everlasting Gobstopper           |     10.00|4.1723529411764706| 5.8276470588235294|
SUG-HAI-55000|Hair Toffee                      |      4.50|4.1723529411764706| 0.3276470588235294|
CHO-TRI-54000|Wonka Bar - Triple Dazzle Caramel|      3.75|4.1723529411764706|-0.4223529411764706|
OTH-FIZ-56000|Fizzy Lifting Drinks             |      3.75|4.1723529411764706|-0.4223529411764706|
```

[^^^](#04_MULTI_TABLE_ANALYSIS)

---

##### SUBQUERY_IN_FROM

```sql
-- SUBQUERIES in the FROM clause

select * from happiness_scores hs 

year|country                  |region                            |happiness_score|gdp_per_capita|social_support|healthy_life_expectancy|freedom_to_make_life_choices|generosity|perceptions_of_corruption|
----+-------------------------+----------------------------------+---------------+--------------+--------------+-----------------------+----------------------------+----------+-------------------------+
2015|Afghanistan              |South Asia                        |          3.575|       0.31982|       0.30285|                0.30335|                     0.23414|   0.36510|                  0.09719|
2015|Albania                  |Central and Eastern Europe        |          4.959|       0.87867|       0.80434|                0.81325|                     0.35733|   0.14272|                  0.06413|
2015|Algeria                  |Middle East and North Africa      |          5.605|       0.93929|       1.07772|                0.61766|                     0.28579|   0.07822|                  0.17383|
2015|Angola                   |Sub-Saharan Africa                |          4.033|       0.75778|       0.86040|                0.16683|                     0.10384|   0.12344|                  0.07122|
2015|Argentina                |Latin America and Caribbean       |          6.574|       1.05351|       1.24823|                0.78723|                     0.44974|   0.11451|                  0.08484|
2015|Armenia                  |Central and Eastern Europe        |          4.350|       0.76821|       0.77711|                0.72990|                     0.19847|   0.07855|                  0.03900|
2015|Australia                |North America and ANZ             |          7.284|       1.33358|       1.30923|                0.93156|                     0.65124|   0.43562|                  0.35637|
2015|Austria                  |Western Europe                    |          7.200|       1.33723|       1.29704|                0.89042|                     0.62433|   0.33088|                  0.18676|

-- avg happiness for each country

select country, avg(happiness_score) as avg_hs_by_country from happiness_scores hs group by country 

country                  |avg_hs_by_country |
-------------------------+------------------+
Indonesia                |5.2675555555555556|
Bangladesh               |4.6884444444444444|
Venezuela                |5.3042222222222222|
Cameroon                 |4.8585555555555556|
Luxembourg               |7.0971111111111111|
Czech Republic           |6.7355714285714286|
Sweden                   |7.3434444444444444|
Uganda                   |4.2448888888888889|
Montenegro               |5.4284444444444444|
Jordan                   |4.7997777777777778|
Dominican Republic       |5.3930000000000000|

-- showe me the hs ower the years for all countries

select hs.year, hs.country, hs.happiness_score, country_hs.avg_hs_by_country 
from happiness_scores hs 
left join (select country, avg(happiness_score) as avg_hs_by_country 
			from happiness_scores hs group by country) as country_hs
on hs.country = country_hs.country

year|country                  |happiness_score|avg_hs_by_country |
----+-------------------------+---------------+------------------+
2015|Afghanistan              |          3.575|2.9907777777777778|
2015|Albania                  |          4.959|4.8932222222222222|
2015|Algeria                  |          5.605|5.4090000000000000|
2015|Angola                   |          4.033|3.8722500000000000|
2015|Argentina                |          6.574|6.2435555555555556|
2015|Armenia                  |          4.350|4.7407777777777778|
2015|Australia                |          7.284|7.2271111111111111|
2015|Austria                  |          7.200|7.1702222222222222|
2015|Azerbaijan               |          5.212|5.2068750000000000|
2015|Bahrain                  |          5.960|6.2514444444444444|
2015|Bangladesh               |          4.694|4.6884444444444444|
2015|Belarus                  |          5.813|5.6106250000000000|
2015|Belgium                  |          6.937|6.8854444444444444|
2015|Benin                    |          3.340|4.3070000000000000|
2015|Bhutan                   |          5.253|5.1248000000000000|

-- showe me the hs for US only ower the years 

select hs.year, hs.country, hs.happiness_score, country_hs.avg_hs_by_country 
from happiness_scores hs 
left join (select country, avg(happiness_score) as avg_hs_by_country 
			from happiness_scores hs group by country) as country_hs
on hs.country = country_hs.country
where hs.country = 'United States'

year|country      |happiness_score|avg_hs_by_country |
----+-------------+---------------+------------------+
2015|United States|          7.119|6.9728888888888889|
2016|United States|          7.104|6.9728888888888889|
2017|United States|          6.993|6.9728888888888889|
2018|United States|          6.886|6.9728888888888889|
2019|United States|          6.892|6.9728888888888889|
2020|United States|          6.940|6.9728888888888889|
2021|United States|          6.951|6.9728888888888889|
2022|United States|          6.977|6.9728888888888889|
2023|United States|          6.894|6.9728888888888889|
```

[^^^](#04_MULTI_TABLE_ANALYSIS)

---

##### MULTI_SUBQUERIES

```sql
-- Multiple Subqueries

-- Queries can contain multiple subqueries as long as each one has a different alias

-- to-do: return years where the happiness score is a whole point greater than the
-- country's average happiness score

select distinct year from happiness_scores hs 

year|
----+
2021|
2020|
2015|
2023|
2022|
2017|
2019|
2016|
2018|

select * from happiness_scores_current hsc --only for data 2024

country                  |ladder_score|gdp_per_capita|social_support|healthy_life_expectancy|freedom_to_make_life_choices|generosity|perceptions_of_corruption|
-------------------------+------------+--------------+--------------+-----------------------+----------------------------+----------+-------------------------+
Finland                  |       7.741|         1.844|         1.572|                  0.695|                       0.859|     0.142|                    0.546|
Denmark                  |       7.583|         1.908|         1.520|                  0.699|                       0.823|     0.204|                    0.548|
Iceland                  |       7.525|         1.881|         1.617|                  0.718|                       0.819|     0.258|                    0.182|
Sweden                   |       7.344|         1.878|         1.501|                  0.724|                       0.838|     0.221|                    0.524|
Israel                   |       7.341|         1.803|         1.513|                  0.740|                       0.641|     0.153|                    0.193|
Netherlands              |       7.319|         1.901|         1.462|                  0.706|                       0.725|     0.247|                    0.372|
Norway                   |       7.302|         1.952|         1.517|                  0.704|                       0.835|     0.224|                    0.484|

select year, country, happiness_score from happiness_scores hs 
union all
select 2024, country, ladder_score from happiness_scores_current hsc

year|country                  |happiness_score|
----+-------------------------+---------------+
2015|Afghanistan              |          3.575|
2015|Albania                  |          4.959|
2015|Algeria                  |          5.605|
2015|Angola                   |          4.033|
2015|Argentina                |          6.574|
2015|Armenia                  |          4.350|
2015|Australia                |          7.284|
2015|Austria                  |          7.200|
2015|Azerbaijan               |          5.212|
2015|Bahrain                  |          5.960|
2015|Bangladesh               |          4.694|

select hs.year, hs.country, hs.happiness_score, country_hs.avg_hs_by_country, 
		hs.happiness_score - country_hs.avg_hs_by_country as diff 
from 	(select year, country, happiness_score from happiness_scores hs 
		union all
		select 2024, country, ladder_score from happiness_scores_current hsc) hs 
left join (select country, avg(happiness_score) as avg_hs_by_country 
			from happiness_scores hs group by country) as country_hs
on hs.country = country_hs.country
where hs.country = 'Venezuela'

year|country  |happiness_score|avg_hs_by_country |diff               |
----+---------+---------------+------------------+-------------------+
2015|Venezuela|          6.810|5.3042222222222222| 1.5057777777777778|
2016|Venezuela|          6.084|5.3042222222222222| 0.7797777777777778|
2017|Venezuela|          5.250|5.3042222222222222|-0.0542222222222222|
2018|Venezuela|          4.806|5.3042222222222222|-0.4982222222222222|
2019|Venezuela|          4.707|5.3042222222222222|-0.5972222222222222|
2020|Venezuela|          5.053|5.3042222222222222|-0.2512222222222222|
2021|Venezuela|          4.892|5.3042222222222222|-0.4122222222222222|
2022|Venezuela|          4.925|5.3042222222222222|-0.3792222222222222|
2023|Venezuela|          5.211|5.3042222222222222|-0.0932222222222222|
2024|Venezuela|          5.607|5.3042222222222222| 0.3027777777777778|

select * from 
(select hs.year, hs.country, hs.happiness_score, country_hs.avg_hs_by_country, 
		hs.happiness_score - country_hs.avg_hs_by_country as diff 
from 	(select year, country, happiness_score from happiness_scores hs 
		union all
		select 2024, country, ladder_score from happiness_scores_current hsc) hs 
left join (select country, avg(happiness_score) as avg_hs_by_country 
			from happiness_scores hs group by country) as country_hs
on hs.country = country_hs.country) as hs_country_hs
where happiness_score > avg_hs_by_country + 1

year|country  |happiness_score|avg_hs_by_country |diff              |
----+---------+---------------+------------------+------------------+
2015|Lesotho  |          4.898|3.8561428571428571|1.0418571428571429|
2015|Venezuela|          6.810|5.3042222222222222|1.5057777777777778|
```

[^^^](#04_MULTI_TABLE_ANALYSIS)

---

##### SUBQUERY_IN_WHERE_HAVING

```sql
-- SUBQUERIES in the where & having clauses

-- return regions with above average happiness scores

select region, avg(happiness_score) as avg_hs
from happiness_scores hs 
group by region 

region                            |avg_hs            |
----------------------------------+------------------+
Commonwealth of Independent States|5.6390681818181818|
North America and ANZ             |7.1760833333333333|
East Asia                         |5.7321296296296296|
Sub-Saharan Africa                |4.2887952522255193|
South Asia                        |4.4732622950819672|
Latin America and Caribbean       |5.9938526315789474|
Central and Eastern Europe        |5.5857616822429907|
Middle East and North Africa      |5.2750993788819876|
Africa                            |5.0570000000000000|
Southeast Asia                    |5.3704250000000000|
Western Europe                    |6.8114734042553191|

select region, avg(happiness_score) as avg_hs
from happiness_scores hs 
group by region 
having avg(happiness_score) > (select avg(happiness_score) from happiness_scores hs2)

region                            |avg_hs            |
----------------------------------+------------------+
Commonwealth of Independent States|5.6390681818181818|
North America and ANZ             |7.1760833333333333|
East Asia                         |5.7321296296296296|
Latin America and Caribbean       |5.9938526315789474|
Central and Eastern Europe        |5.5857616822429907|
Western Europe                    |6.8114734042553191|
```

##### ANY_ALL

```sql
-- ANY / ALL

-- scores that are greater than any 2024 scores
select year, region, happiness_score 
from happiness_scores hs 
where happiness_score > any (select ladder_score from happiness_scores_current hsc)

year|region                            |happiness_score|
----+----------------------------------+---------------+
2015|South Asia                        |          3.575|
2015|Central and Eastern Europe        |          4.959|
2015|Middle East and North Africa      |          5.605|
2015|Sub-Saharan Africa                |          4.033|
2015|Latin America and Caribbean       |          6.574|
2015|Central and Eastern Europe        |          4.350|
2015|North America and ANZ             |          7.284|
2015|Western Europe                    |          7.200|
2015|Central and Eastern Europe        |          5.212|
2015|Middle East and North Africa      |          5.960|
2015|South Asia                        |          4.694|
2015|Central and Eastern Europe        |          5.813|
2015|Western Europe                    |          6.937|

-- scores that are greater than all 2024 scores
select year, region, happiness_score 
from happiness_scores hs 
where happiness_score > all (select ladder_score from happiness_scores_current hsc)

year|region        |happiness_score|
----+--------------+---------------+
2019|Western Europe|          7.769|
2020|Western Europe|          7.809|
2021|Western Europe|          7.842|
2022|Western Europe|          7.821|
2023|Western Europe|          7.804|
```

[^^^](#SQL_for_Data_Analysis)

---

##### CTE

```
-- CTE - a common table expression creates a named temporary output that can 
-- be refrenced within another query
```

```sql
-- return each countrys happiness score for the year alongside the countrys average happiness score

with country_hs as (select 
					country, 
					avg(happiness_score) as avg_hs_by_country 
					from happiness_scores
					group by country)
select 	hs.year,
		hs.country, 
		hs.happiness_score,
		country_hs.avg_hs_by_country
from happiness_scores hs
		left join country_hs on hs.country = country_hs.country  

year|country                  |happiness_score|avg_hs_by_country |
----+-------------------------+---------------+------------------+
2015|Afghanistan              |          3.575|2.9907777777777778|
2015|Albania                  |          4.959|4.8932222222222222|
2015|Algeria                  |          5.605|5.4090000000000000|
2015|Angola                   |          4.033|3.8722500000000000|
2015|Argentina                |          6.574|6.2435555555555556|
2015|Armenia                  |          4.350|4.7407777777777778|
2015|Australia                |          7.284|7.2271111111111111|
2015|Austria                  |          7.200|7.1702222222222222|
2015|Azerbaijan               |          5.212|5.2068750000000000|
2015|Bahrain                  |          5.960|6.2514444444444444|

/* 
 * 	why use cte?
 * - readability: complex queries with ctes are much easier to read
 * - reusability: ctes can be referenced multiple times within a query
 * - recursiveness: ctes can handle recursive queries
 * 
 */
```

[^^^](#SQL_for_Data_Analysis)

---

[^^^](#SQL_for_Data_Analysis)

---

[^^^](#SQL_for_Data_Analysis)

---

[^^^](#SQL_for_Data_Analysis)

---
