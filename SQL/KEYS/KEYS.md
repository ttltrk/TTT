
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### KEYS

---

```
- PRIMARY
- UNIQUE
- FOREIGN
```

---

* [PRIMARY_KEY](#PRIMARY_KEY)
* [UNIQUE_KEY_CONSTRAINT](#UNIQUE_KEY_CONSTRAINT)
* [FOREIGN_KEY](#FOREIGN_KEY)


---

#### PRIMARY_KEY

```
- PK uniquely identify a record in the table
- Can't accept NULL VALUES
- We can have only one PK in a table
- By default PK is clustered index and data in the db table is physically organized in the seq of clustered index
```

```sql


>>>

>>>
```


[^^^](#KEYS)

---

#### UNIQUE_KEY_CONSTRAINT

```
The UNIQUE constraint ensures that all values in a column are different.
Both the UNIQUE and PRIMARY KEY constraints provide a guarantee for uniqueness for a column or set of columns.
A PRIMARY KEY constraint automatically has a UNIQUE constraint.
However, you can have many UNIQUE constraints per table, but only one PRIMARY KEY constraint per table.

```

```sql


>>>

>>>
```


[^^^](#KEYS)

---

#### FOREIGN_KEY

```
- FK is a field in the table that is PK in another table
- FK can accept a multiple NULL_VALUES
- we can have more than one FK in a table
- FK do not automatically create an index
```

```sql


>>>

>>>
```


[^^^](#KEYS)

---
