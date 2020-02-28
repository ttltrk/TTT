
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

#### AND_OR_NOT

---

```
The WHERE clause can be combined with AND, OR, and NOT operators.
The AND and OR operators are used to filter records based on more than one condition:
The AND operator displays a record if all the conditions separated by AND are TRUE.
The OR operator displays a record if any of the conditions separated by OR is TRUE.
The NOT operator displays a record if the condition(s) is NOT TRUE.
```

---

* [BASICS](#BASICS)

---

#### BASICS

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
SELECT * FROM trk_test_02 WHERE city='BP' AND dep='DEVOPS';

>>>
systemid|dep   |city|
--------|------|----|
       2|DEVOPS|BP  |
>>>
```

```sql
SELECT * FROM trk_test_02 WHERE city='BP' OR city='BA';

>>>
systemid|dep   |city|
--------|------|----|
       1|ITOPS |BA  |
       2|DEVOPS|BP  |
       5|ITOPS |BP  |
>>>
```

```sql       
SELECT * FROM trk_test_02 WHERE NOT city='BP';

>>>
systemid|dep       |city|
--------|----------|----|
       1|ITOPS     |BA  |
       3|HR        |SF  |
       4|MANAGEMENT|LA  |
       6|ITOPS     |LN  |
       7|DEVOPS    |NYC |
>>>
```

```sql   
SELECT * FROM trk_test_02 WHERE dep='ITOPS' AND (City='BA' OR City='BP');

>>>
systemid|dep  |city|
--------|-----|----|
       1|ITOPS|BA  |
       5|ITOPS|BP  |
>>>
```

```sql
SELECT * FROM trk_test_02 WHERE NOT city='NYC' AND NOT dep='ITOPS';

>>>
systemid|dep       |city|
--------|----------|----|
       2|DEVOPS    |BP  |
       3|HR        |SF  |
       4|MANAGEMENT|LA  |
>>>
```

[^^^](#AND_OR_NOT)

---
