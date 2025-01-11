
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### SQL_HR

---

```
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths
(i.e.: number of characters in the name). If there is more than one smallest or largest city,
choose the one that comes first when ordered alphabetically.
```

```sql
(SELECT CITY, LENGTH(CITY) AS CityLength
 FROM STATION
 WHERE LENGTH(CITY) = (SELECT MIN(LENGTH(CITY)) FROM STATION)
 ORDER BY CITY
 FETCH FIRST 1 ROW ONLY)
UNION ALL
(SELECT CITY, LENGTH(CITY) AS CityLength
 FROM STATION
 WHERE LENGTH(CITY) = (SELECT MAX(LENGTH(CITY)) FROM STATION)
 ORDER BY CITY
 FETCH FIRST 1 ROW ONLY);

>>>
Amo 3
Marine On Saint Croix 21
>>>
```
