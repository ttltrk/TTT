---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### ALIAS

---

```

```

---

* [BASICS](#BASICS)

---

#### BASICS

```sql
SELECT personid, firstname FROM trk_test_01;

>>>
personid|firstname|
--------|---------|
       1|ttl      |
       2|jon      |
       3|samatha  |
       6|leo      |
       4|bbe      |
       5|alex     |
       7|brent    |
>>>

SELECT personid AS PI, firstname AS FI FROM trk_test_01;

>>>
pi|fi     |
--|-------|
 1|ttl    |
 2|jon    |
 3|samatha|
 6|leo    |
 4|bbe    |
 5|alex   |
 7|brent  |
>>>
```

[^^^](#ALIAS)

---
