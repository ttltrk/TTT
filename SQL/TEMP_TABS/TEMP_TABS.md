
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### TEMP_TABS

---

```

```

---

* [BASICS](#BASICS)
* [LOCAL_TEMP_TABS](#LOCAL_TEMP_TABS)
* [GLOBAL_TEMP_TABS](#GLOBAL_TEMP_TABS)

---

#### BASICS

```sql


>>>

>>>
```

[^^^](#TEMP_TABS)

---

#### LOCAL_TEMP_TABS

```
A local temporary table is created using CREATE TABLE statement with the table name prefixed with single number sign (#table_name).
In SQL Server, local temporary tables are visible only in the current session.
So if you create a local temporary table in one session, you cannot access it in other sessions.
```

```sql


>>>

>>>
```

[^^^](#TEMP_TABS)

---

#### GLOBAL_TEMP_TABS

```
A global temporary table is created using CREATE TABLE statement with the table name prefixed with a double number sign (##table_name).
In SQL Server, global temporary tables are visible to all sessions (connections).
So if you create a global temporary table in one session, you can start using it in other sessions.
```

```sql


>>>

>>>
```

[^^^](#TEMP_TABS)

---
