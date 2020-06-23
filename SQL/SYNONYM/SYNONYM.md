
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### SYNONYM

---

```
The sys.synonyms catalog view contains an entry for each synonym in a given database.
This catalog view exposes synonym metadata such as the name of the synonym and the name of the base object.
For more information, see sys.synonyms (Transact-SQL).

By using extended properties, you can add descriptive or instructional text, input masks,
and formatting rules as properties of a synonym. Because the property is stored in the database,
all applications that read the property can evaluate the object in the same way. For more information,
see sp_addextendedproperty (Transact-SQL).

To find the base type of the base object of a synonym, use the OBJECTPROPERTYEX function.
For more information, see OBJECTPROPERTYEX (Transact-SQL).
```

---

* [BASICS](#BASICS)
* [SYNONYM_VS_VIEW](#SYNONYM_VS_VIEW)

---

#### BASICS

```sql


>>>

>>>
```


[^^^](#SYNONYM)

---

#### SYNONYM_VS_VIEW

```
SYNONYM
- it is an alias of a base table
- it contains the physical existence and will occupy the memory
- it can create on a single base table only
- we can not restrict the specific columns and rows
- SYNONYM are not providing hiding facilities on the required rows and columns

VIEW
- it is a virtual table of a base table
- it does not contains physical existence and will not occupy the memory
- it can be create on a multiple base tables at a time
- we can restrict the specific columns and rows
- it will providing hiding facilities on specific rows and columns
```

```sql


>>>

>>>
```


[^^^](#SYNONYM)

---
