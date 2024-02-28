
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [DS](https://github.com/ttltrk/TTT/blob/master/SQL/DS/DS.md)

---

### 0214_WHERE_AND_OPERATORS

---     

```sql         
select *
from employees
where gender = 'F'
and department ='Tools'
and salary > 110000
limit 8;  
```

```
employee_id|first_name|last_name  |email                 |hire_date |department|gender|salary|region_id|
-----------+----------+-----------+----------------------+----------+----------+------+------+---------+
         14|Jodi      |Hook       |jhookd@booking.com    |2003-10-16|Tools     |F     |126588|        2|
         63|Fanya     |Naish      |fnaish1q@jalbum.net   |2014-02-24|Tools     |F     |140681|        3|
         98|Natalee   |Arnal      |narnal2p@reference.com|2014-03-16|Tools     |F     |125024|        5|
        572|Mandy     |Miere      |mmierefv@rediff.com   |2008-12-03|Tools     |F     |142299|        6|
        809|Babara    |Antoniewicz|bantoniewiczmg@nhs.uk |2007-01-15|Tools     |F     |153102|        1|
        866|Kyrstin   |Kloser     |                      |2010-01-05|Tools     |F     |126942|        2|
```

---

```sql        
select first_name, email
from employees
where gender = 'F'
and department ='Tools'
and salary > 110000
limit 8;
```

```
first_name|email                 |
----------+----------------------+
Jodi      |jhookd@booking.com    |
Fanya     |fnaish1q@jalbum.net   |
Natalee   |narnal2p@reference.com|
Mandy     |mmierefv@rediff.com   |
Babara    |bantoniewiczmg@nhs.uk |
Kyrstin   |                      |
```

---

```sql
select *
from employees
where salary > 165000
or (department ='Sports' and gender ='M')
limit 8;
```

```
employee_id|first_name|last_name|email                          |hire_date |department|gender|salary|region_id|
-----------+----------+---------+-------------------------------+----------+----------+------+------+---------+
         34|Lucy      |Olifaunt |lolifauntx@dailymotion.com     |2005-02-07|Sports    |F     |165660|        7|
         77|Maurice   |Philbrick|                               |2006-01-08|Sports    |M     | 67615|        1|
         91|Riley     |Yellowlea|ryellowlea2i@ibm.com           |2007-03-20|Camping   |M     |166569|        5|
        164|Benjamin  |Younie   |byounie4j@cdbaby.com           |2006-11-13|Sports    |M     | 21735|        2|
        211|Michail   |Leamy    |mleamy5u@ted.com               |2011-03-07|Sports    |M     |103760|        6|
        348|Jacklyn   |Finlator |jfinlator9n@sphinn.com         |2004-01-04|Clothing  |F     |166976|        4|
        398|Gustavo   |Jollands |gjollandsb1@constantcontact.com|2014-03-01|Sports    |M     | 77085|        3|
        423|Gav       |Cohn     |                               |2008-07-18|Sports    |M     |115978|        3|
```

---

```sql        
select first_name, hire_date
from employees
where salary > 165000
or (department ='Sports' and gender ='M')
limit 8;
```

```
first_name|hire_date |
----------+----------+
Lucy      |2005-02-07|
Maurice   |2006-01-08|
Riley     |2007-03-20|
Benjamin  |2006-11-13|
Michail   |2011-03-07|
```

---

```sql
select *
from employees
where hire_date between '2002-01-01' and '2004-01-01'
limit 8;
```

```
employee_id|first_name|last_name  |email                |hire_date |department       |gender|salary|region_id|
-----------+----------+-----------+---------------------+----------+-----------------+------+------+---------+
          5|Feliks    |Morffew    |fmorffew4@a8.net     |2003-01-14|Computers        |M     | 55307|        5|
          6|Bethena   |Trow       |btrow5@technorati.com|2003-06-08|Sports           |F     |134501|        3|
          9|Dayle     |Trail      |dtrail8@tamu.edu     |2003-03-01|First Aid        |F     | 82753|        1|
         14|Jodi      |Hook       |jhookd@booking.com   |2003-10-16|Tools            |F     |126588|        2|
         15|Alyson    |Franzonello|                     |2004-01-01|Furniture        |F     | 61256|        6|
         38|Edna      |Erwin      |                     |2003-04-09|Children Clothing|F     | 91397|        5|
         75|Fiorenze  |Woodyer    |                     |2003-02-17|Phones & Tablets |F     | 51266|        2|
         79|Rora      |Brumfitt   |rbrumfitt26@ucoz.ru  |2003-01-12|Children Clothing|F     |153489|        7|
```

---

```sql
select first_name, hire_date
from employees
where hire_date between '2002-01-01' and '2004-01-01'
limit 8;
```

```
first_name|hire_date |
----------+----------+
Feliks    |2003-01-14|
Bethena   |2003-06-08|
Dayle     |2003-03-01|
Jodi      |2003-10-16|
Alyson    |2004-01-01|
```

---

```sql
select * from employees
where department = 'Automotive'
and salary between 40000 and 100000
and gender ='M'
or (gender ='F' and department ='Toys')
limit 5;
```

```
employee_id|first_name|last_name|email                   |hire_date |department|gender|salary|region_id|
-----------+----------+---------+------------------------+----------+----------+------+------+---------+
         17|Annora    |Bendelow |abendelowg@google.com.hk|2009-06-12|Toys      |F     | 75283|        5|
         18|Ronica    |Armfield |                        |2012-09-14|Toys      |F     |114983|        5|
         42|Penelopa  |Danieli  |pdanieli15@microsoft.com|2014-06-23|Toys      |F     | 85218|        1|
        217|Sileas    |Rushman  |srushman60@dion.ne.jp   |2011-02-05|Toys      |F     |118649|        6|
        218|Guenevere |Conlon   |gconlon61@loc.gov       |2007-04-19|Toys      |F     | 69012|        2|
```

---        
