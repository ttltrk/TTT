
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

<h3 id='^'>AND OR NOT</h3>

---

* <a href='#basics'>Basics</a></br>

---

<h3 id='basics'>Basics</h3>

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

<a href='#^'>^^^</a>

---
