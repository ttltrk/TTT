
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### WILDCARDS

---

```
A wildcard character is used to substitute one or more characters in a string.
```

---

* [%](#%)
* [_](#_)

---

#### %

```sql
SELECT * FROM trk_test_01 WHERE City LIKE 'tor%';

>>>
personid|lastname|firstname|address|city   |
--------|--------|---------|-------|-------|
       6|kawhi   |leo      |canada |toronto|
>>>
```

```SQL
SELECT * FROM trk_test_01 WHERE firstname LIKE '%mat%';

>>>
personid|lastname|firstname|address|city  |
--------|--------|---------|-------|------|
       3|ewong   |samatha  |SFR    |Dallas|
>>>
```

[^^^](#WILDCARDS)

---

#### _

```sql
SELECT * FROM trk_test_01 WHERE city LIKE '_allas';

>>>
personid|lastname|firstname|address|city  |
--------|--------|---------|-------|------|
       3|ewong   |samatha  |SFR    |Dallas|
>>>
```

```sql
SELECT * FROM trk_test_01 WHERE city LIKE 't_r_nt_';

>>>
personid|lastname|firstname|address|city   |
--------|--------|---------|-------|-------|
       6|kawhi   |leo      |canada |toronto|
>>>
```

[^^^](#WILDCARDS)

---
