
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [DS](https://github.com/ttltrk/TTT/blob/master/SQL/DS/DS.md)

---

### 0424_USING_GROUPBY_HAVING

---

```sql
select count(first_name)
from employees
where first_name = 'Billie';
```

```
count|
-----+
    3|
```

```sql
--how many people (more than one) have the same first name in the company

select first_name, count(*)
from employees
group by first_name
having count(*) > 1
order by count desc
limit 10;
```

```
first_name|count|
----------|-----|
Billie    |    3|
Roslyn    |    3|
Akim      |    2|
Cal       |    2|
Willard   |    2|
Del       |    2|
Stefano   |    2|
Alverta   |    2|
Alfons    |    2|
Jania     |    2|
```

---

```sql
-- return the mail addresses

select email
from employees
where email is not null
limit 10;
```

```
email                   |
------------------------+
bmanueau0@dion.ne.jp    |
amcnee1@google.es       |
ssymonds2@hhs.gov       |
fmorffew4@a8.net        |
btrow5@technorati.com   |
acurwood6@1und1.de      |
sdubber7@t-online.de    |
dtrail8@tamu.edu        |
npointona@vistaprint.com|
lcasarolib@plala.or.jp  |
```

```sql
-- return the domain names

select substring(email, position('@' in email) +1) mail_domain
from employees
where email is not null
limit 10;
```

```
mail_domain   |
--------------+
dion.ne.jp    |
google.es     |
hhs.gov       |
a8.net        |
technorati.com|
1und1.de      |
t-online.de   |
tamu.edu      |
vistaprint.com|
plala.or.jp   |
```

```sql
--find how many domains are in the list per providers

select substring(email, position('@' in email) +1) mail_domain, count(*)
from employees
where email is not NULL
group by substring(email, position('@' in email) +1)
order by count(*) desc
limit 10;
```

```
mail_domain    |count|
---------------+-----+
dion.ne.jp     |    7|
netvibes.com   |    6|
tamu.edu       |    5|
technorati.com |    5|
wordpress.org  |    5|
kickstarter.com|    5|
soundcloud.com |    5|
webmd.com      |    5|
unesco.org     |    5|
zdnet.com      |    5|
```

---
