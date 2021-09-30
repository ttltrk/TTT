
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PACKAGES](https://github.com/ttltrk/TTT/blob/master/PY/PACKAGES/PACKAGES.md)

---

### SQLITE

---

* [LINKS](#LINKS)
* [CREATE_A_DB](#CREATE_A_DB)
* [CREATE_A_CURSOR](#CREATE_A_CURSOR)
* [CREATE_A_TABLE](#CREATE_A_TABLE)

---

#### LINKS

* [SQLite Databases With Python - Full Course](https://www.youtube.com/watch?v=byHcYRpMgI4)

---

#### CREATE_A_DB

```py
import sqlite3

#conn = sqlite3.connect(':memory:')
conn = sqlite3.connect('customer.db')
```

[^^^](#SQLITE)

---

#### CREATE_A_CURSOR

```py
#create a cursor
c = conn.cursor()

#create a table
c.execute("""CREATE TABLE customers (
    first_name DATATYPE,
    last_name DATATYPE,
    email DATATYPE
)""")

c.execute("""CREATE TABLE customers (
    first_name DATATYPE,
    last_name DATATYPE,
    email DATATYPE
)""")
```

[^^^](#SQLITE)

---

#### CREATE_A_TABLE

```py
#create a cursor
c = conn.cursor()

#create a table
c.execute("""CREATE TABLE customers (
    first_name DATATYPE,
    last_name DATATYPE,
    email DATATYPE
)""")

c.execute("""CREATE TABLE customers (
    first_name DATATYPE,
    last_name DATATYPE,
    email DATATYPE
)""")
```

[^^^](#SQLITE)

---
