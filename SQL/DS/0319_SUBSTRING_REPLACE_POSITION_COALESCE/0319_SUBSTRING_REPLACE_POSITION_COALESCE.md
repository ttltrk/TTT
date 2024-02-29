
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [DS](https://github.com/ttltrk/TTT/blob/master/SQL/DS/DS.md)

---

### 0319_SUBSTRING_REPLACE_POSITION_COALESCE

---

```sql
select 'This is test data' test_data;
```

```
test_data        |
-----------------+
This is test data|
```

---

```sql
--This
select substring('This is test data' from 1 for 4) test_data_extracted;
```

```
test_data_extracted|
-------------------+
This               |
```

---

```sql
--test
select substring('This is test data' from 9 for 4) test_data_extracted;
```

```
test_data_extracted|
-------------------+
test               |
```

---

```sql
--test data
select substring('This is test data' from 9) test_data_extracted;
```

```
test_data_extracted|
-------------------+
test data          |
```

---

```sql
--is is test data
select substring('This is test data' from 3) test_data_extracted;
```

```
test_data_extracted|
-------------------+
is is test data    |
```

---

```sql
select department, replace(department, 'Clothing', 'Attire') modified_data
from departments
limit 8;
```

```
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
```

---

```sql
select department, replace(department, 'Clothing', 'Attire') modified_data, department || ' department' as "Complete Department Name"
from departments
limit 8;
```

```
department      |modified_data   |Complete Department Name   |
----------------+----------------+---------------------------+
Clothing        |Attire          |Clothing department        |
Grocery         |Grocery         |Grocery department         |
Decor           |Decor           |Decor department           |
Furniture       |Furniture       |Furniture department       |
Computers       |Computers       |Computers department       |
Device Repair   |Device Repair   |Device Repair department   |
Phones & Tablets|Phones & Tablets|Phones & Tablets department|
Garden          |Garden          |Garden department          |
```

---

```sql
--POSITION()
select email, position('@' in email)
from employees
limit 8;
```

```
email                |position|
---------------------+--------+
bmanueau0@dion.ne.jp |      10|
amcnee1@google.es    |       8|
ssymonds2@hhs.gov    |      10|
                     |        |
fmorffew4@a8.net     |      10|
btrow5@technorati.com|       7|
acurwood6@1und1.de   |      10|
sdubber7@t-online.de |       9|
```

---

```sql
select email, substring(email, position('@' in email)) formatted_text
from employees
limit 8;
```

```
email                |formatted_text |
---------------------+---------------+
bmanueau0@dion.ne.jp |@dion.ne.jp    |
amcnee1@google.es    |@google.es     |
ssymonds2@hhs.gov    |@hhs.gov       |
                     |               |
fmorffew4@a8.net     |@a8.net        |
btrow5@technorati.com|@technorati.com|
acurwood6@1und1.de   |@1und1.de      |
sdubber7@t-online.de |@t-online.de   |
```

---

```sql                                  
select email, substring(email, position('@' in email) +1) formatted_text
from employees
limit 8;
```

```
email                |formatted_text|
---------------------+--------------+
bmanueau0@dion.ne.jp |dion.ne.jp    |
amcnee1@google.es    |google.es     |
ssymonds2@hhs.gov    |hhs.gov       |
                     |              |
fmorffew4@a8.net     |a8.net        |
btrow5@technorati.com|technorati.com|
acurwood6@1und1.de   |1und1.de      |
sdubber7@t-online.de |t-online.de   |
```

---

```sql
select email, substring(email, position('@' in email) -1) formatted_text
from employees
limit 8;
```

```
email                |formatted_text  |
---------------------+----------------+
bmanueau0@dion.ne.jp |0@dion.ne.jp    |
amcnee1@google.es    |1@google.es     |
ssymonds2@hhs.gov    |2@hhs.gov       |
                     |                |
fmorffew4@a8.net     |4@a8.net        |
btrow5@technorati.com|5@technorati.com|
acurwood6@1und1.de   |6@1und1.de      |
sdubber7@t-online.de |7@t-online.de   |
```

---

```sql
select email
from employees
limit 8;
```

```
email                |
---------------------+
bmanueau0@dion.ne.jp |
amcnee1@google.es    |
ssymonds2@hhs.gov    |
                     |
fmorffew4@a8.net     |
btrow5@technorati.com|
acurwood6@1und1.de   |
sdubber7@t-online.de |
```

---

```sql
select coalesce(email, 'NONE') as email
from employees
limit 8;
```

```
email                |
---------------------+
bmanueau0@dion.ne.jp |
amcnee1@google.es    |
ssymonds2@hhs.gov    |
NONE                 |
fmorffew4@a8.net     |
btrow5@technorati.com|
acurwood6@1und1.de   |
sdubber7@t-online.de |
```

---
