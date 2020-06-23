
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### JOINS

---

```
- INNER - Returns records that have matching values in both tables
- OUTER
  - LEFT OUTER - Returns all records from the left table, and the matched records from the right table
  - RIGHT OUTER - Returns all records from the right table, and the matched records from the left table
  - FULL OUTER - Returns all records when there is a match in either left or right table
- CROSS - produces Cartesian product of the tables that are involved in the join.
          The size of a Cartesian product is the number of the rows in the first table multiplied by the
          number of rows in the second table.
```

```
/*
 * SELECT a, b, c, ID, ID
 * FROM tab1
 * INNER JOIN tab2
 * ON tab1.ID = tab2.ID
 */
```

---

* [INNER_JOIN](#INNER_JOIN)
* [OUTER_JOIN](#OUTER_JOIN)
* [LEFT_OUTER_JOIN](#LEFT_OUTER_JOIN)
* [RIGHT_OUTER_JOIN](#RIGHT_OUTER_JOIN)
* [FULL_OUTER_JOIN](#FULL_OUTER_JOIN)
* [CROSS_JOIN](#CROSS_JOIN)

---

#### INNER_JOIN

```sql
select * from trk_test_01;

>>>
personid|lastname|firstname|address |city   |
--------|--------|---------|--------|-------|
       1|trk     |ttl      |Hlavna 5|TNO    |
       2|doe     |jon      |CA      |GS     |
       3|ewong   |samatha  |SFR     |Dallas |
       6|kawhi   |leo      |canada  |toronto|
       4|bbking  |bbe      |hemp    |ams    |
       5|petofi  |alex     |var     |BP     |
       7|jockey  |brent    |still   |GER    |
>>>

select * from trk_test_02;

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
       8|ARCHITECT |GER |
>>>

SELECT trk_test_01.personid AS ID, trk_test_01.lastname, trk_test_02.dep, trk_test_02.city
FROM trk_test_01
INNER JOIN trk_test_02
ON trk_test_01.personid=trk_test_02.systemid;

>>>
personid|lastname|dep       |
--------|--------|----------|
       1|trk     |ITOPS     |
       2|doe     |DEVOPS    |
       3|ewong   |HR        |
       4|bbking  |MANAGEMENT|
       5|petofi  |ITOPS     |
       6|kawhi   |ITOPS     |
       7|jockey  |DEVOPS    |
>>>
```

[^^^](#JOINS)

---

#### OUTER_JOIN

```sql


>>>

>>>
```

[^^^](#JOINS)

---

#### LEFT_OUTER_JOIN

```sql


>>>

>>>
```

[^^^](#JOINS)

---

#### RIGHT_OUTER_JOIN

```sql


>>>

>>>
```

[^^^](#JOINS)

---

#### FULL_OUTER_JOIN

```sql


>>>

>>>
```

[^^^](#JOINS)

---

#### CROSS_JOIN

```sql


>>>

>>>
```

[^^^](#JOINS)

---
