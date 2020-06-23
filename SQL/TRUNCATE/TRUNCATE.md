
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### TRUNCATE

---

```

```

---

* [BASICS](#BASICS)


---

#### BASICS

```sql


>>>

>>>
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
