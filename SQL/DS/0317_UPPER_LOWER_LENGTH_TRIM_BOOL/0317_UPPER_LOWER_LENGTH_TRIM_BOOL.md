
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [DS](https://github.com/ttltrk/TTT/blob/master/SQL/DS/DS.md)

---

### 0317_UPPER_LOWER_LENGTH_TRIM_BOOL

---

```sql
--UPPER(), LOWER()
select UPPER(first_name), LOWER(department)
from employees
limit 8;
```

```
upper  |lower           |
-------+----------------+
BERRIE |sports          |
AERIELL|tools           |
SYDNEY |clothing        |
AVROM  |phones & tablets|
FELIKS |computers       |
BETHENA|sports          |
ARDEEN |clothing        |
SELINE |phones & tablets|
```

---

```sql
--LENGTH()
select LENGTH(first_name), LOWER(department)
from employees
limit 8;
```

```
length|lower           |
------+----------------+
     6|sports          |
     7|tools           |
     6|clothing        |
     5|phones & tablets|
     6|computers       |
     7|sports          |
     6|clothing        |
     6|phones & tablets|
```

---     

```sql
--TRIM()
--26
select LENGTH('       Hello there        ');
```

```
length|
------+
    26|
```

---    

```sql
-- removing the extra spaces    
select TRIM('       Hello there        ');
```

```
btrim      |
-----------+
Hello there|
```

---

```sql
--26
select LENGTH('       Hello there        ');
```

```
length|
------+
    26|
```

---    

```sql
--11    
select LENGTH(TRIM('       Hello there        '));
```

```
length|
------+
    11|
```

---

```sql
--concat two columns into one
select first_name as full_name
from employees
limit 8;
```

```
full_name|
---------+
Berrie   |
Aeriell  |
Sydney   |
Avrom    |
Feliks   |
Bethena  |
Ardeen   |
Seline   |
```

---

```sql
select last_name as full_name
from employees
limit 8;
```

```
full_name|
---------+
Manueau  |
McNee    |
Symonds  |
Rowantree|
Morffew  |
Trow     |
Curwood  |
Dubber   |
```

---

```sql
select first_name, last_name
from employees
limit 8;
```

```
first_name|last_name|
----------+---------+
Berrie    |Manueau  |
Aeriell   |McNee    |
Sydney    |Symonds  |
Avrom     |Rowantree|
Feliks    |Morffew  |
Bethena   |Trow     |
Ardeen    |Curwood  |
Seline    |Dubber   |
```

```sql
select first_name || ' ' || last_name as full_name
from employees
limit 8;
```

```
full_name      |
---------------+
Berrie Manueau |
Aeriell McNee  |
Sydney Symonds |
Avrom Rowantree|
Feliks Morffew |
Bethena Trow   |
Ardeen Curwood |
Seline Dubber  |
```

```sql
--same as above (without as)
select first_name || ' ' || last_name full_name
from employees
limit 8;
```

```
full_name      |
---------------+
Berrie Manueau |
Aeriell McNee  |
Sydney Symonds |
Avrom Rowantree|
Feliks Morffew |
Bethena Trow   |
Ardeen Curwood |
Seline Dubber  |
```

---

```sql
--boolean expr
select first_name || ' ' || last_name full_name, (salary > 140000) is_highly_paid
from employees
order by salary desc
limit 8;
```

```
full_name         |is_highly_paid|
------------------+--------------+
Jacklyn Finlator  |true          |
Carissa Gabbitus  |true          |
Riley Yellowlea   |true          |
Lauren Bertenshaw |true          |
Lucy Olifaunt     |true          |
Barby Daniell     |true          |
Ev Wessell        |true          |
Sherwynd Shelliday|true          |
```

---

```sql
select department, ('Clothing' in (department, first_name))
from employees
limit 8;
```

```
department      |?column?|
----------------+--------+
Sports          |false   |
Tools           |false   |
Clothing        |true    |
Phones & Tablets|false   |
Computers       |false   |
Sports          |false   |
Clothing        |true    |
Phones & Tablets|false   |
```

---

```sql
select department, (department like '%oth%')
from employees
limit 8;
```

```
department      |?column?|
----------------+--------+
Sports          |false   |
Tools           |false   |
Clothing        |true    |
Phones & Tablets|false   |
Computers       |false   |
Sports          |false   |
Clothing        |true    |
Phones & Tablets|false   |
```

---
