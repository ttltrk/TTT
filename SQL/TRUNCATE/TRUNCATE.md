
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### TRUNCATE

---

```
The TRUNCATE TABLE statement is used to delete the data inside a table, but not the table itself.
```

```sql
TRUNCATE TABLE table_name;
```

```sql
select * from trk_test_xx ttx;

personid|lastname|firstname|address |city   |
--------+--------+---------+--------+-------+
       1|trk     |ttl      |Hlavna 5|TNO    |
       2|doe     |jon      |CA      |GS     |
       3|ewong   |samatha  |SFR     |Dallas |
       6|kawhi   |leo      |canada  |toronto|
       4|bbking  |bbe      |hemp    |ams    |
       5|petofi  |alex     |var     |BP     |
       7|jockey  |brent    |still   |GER    |

truncate table trk_test_xx;

select * from trk_test_xx ttx;

personid|lastname|firstname|address|city|
--------+--------+---------+-------+----+
```

[^^^](#TRUNCATE)

---

#### TRUNCATE_VS_DELETE

```
TRUNCATE
- it is a DDL command
- it does not support WHERE
- removes all the data
- faster then DELETE as it locks entire table
- table identity column is reset to seed value

DELETE
- it is a DML command
- it is supports WHERE
- removes data based on conditions specified in the WHERE
- slower then TRUNCATE
- table identity column is not reset
```

```sql


>>>

>>>
```


[^^^](#TRUNCATE)

---
