
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### VIEW

---

```
In SQL, a view is a virtual table based on the result set of an SQL statement.
```

---

* [CREATE_VIEW](#CREATE_VIEW)
* [CREATE_OR_REPLACE_VIEW](#CREATE_OR_REPLACE_VIEW)
* [DROP_VIEW](#DROP_VIEW)
* [DISTINGUISH_TABLE_VS_VIEW](#DISTINGUISH_TABLE_VS_VIEW)

---

#### CREATE_VIEW

```
The CREATE VIEW command creates a view.
```

```SQL
SELECT * FROM trk_test_01;

>>>
personid|lastname|firstname|address |city   |
--------|--------|---------|--------|-------|
       1|trk     |ttl      |Hlavna 5|TNO    |
       2|doe     |jon      |CA      |GS     |
       3|ewong   |samatha  |SFR     |Dallas |
       6|kawhi   |leo      |canada  |toronto|
       4|bbking  |bbe      |hemp    |ams    |
       5|petofi  |alex     |var     |BP     |
>>>

CREATE VIEW US_Cust AS
SELECT lastname, firstname, city
FROM trk_test_01
WHERE City='Dallas';

SELECT * FROM US_Cust;

>>>
lastname|firstname|city  |
--------|---------|------|
ewong   |samatha  |Dallas|
>>>
```

[^^^](#VIEW)

---

#### CREATE_OR_REPLACE_VIEW

```
The CREATE OR REPLACE VIEW command updates a view.
```

```SQL
SELECT * FROM US_Cust;

>>>
lastname|firstname|city  |
--------|---------|------|
ewong   |samatha  |Dallas|
>>>

CREATE or replace VIEW US_Cust AS
SELECT lastname, firstname, city, address
FROM trk_test_01
WHERE City='Dallas';

SELECT * FROM US_Cust;

>>>
lastname|firstname|city  |address|
--------|---------|------|-------|
ewong   |samatha  |Dallas|SFR    |
>>>
```

[^^^](#VIEW)

---

#### DROP_VIEW

```
The DROP VIEW command deletes a view.
```

```SQL
SELECT * FROM US_Cust;

>>>
lastname|firstname|city  |address|
--------|---------|------|-------|
ewong   |samatha  |Dallas|SFR    |
>>>

DROP VIEW US_CUST;

SELECT * FROM US_Cust;

>>>
SQL Error [42P01]: ERROR: relation "us_cust" does not exist
  Position: 15
>>>
```

[^^^](#VIEW)

---

#### DISTINGUISH_TABLE_VS_VIEW

```SQL
SELECT * FROM information_schema.tables;
```

[^^^](#VIEW)

---
