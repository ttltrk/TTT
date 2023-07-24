
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md)

---

- [link](https://www.youtube.com/watch?v=ztHopE5Wnpc)

---

#### DATABASE_DESIGN

- [FUNDAMENTALS](#FUNDAMENTALS)
- [RDBMS](#RDBMS)

---

#### FUNDAMENTALS

- DB stores data.
- RDBMS = Relational Database Management System

- entity - is anything we store data about - (person, row)
- attribute - are the things we are store - (name, column)

```
caleb - username
calebkurry - username
p1234 - password
```

- entity type - category of entities - (user, put everything into a tuple/list/set)
- attribute type - category of attributes (user names, names, passwords)

[^^^](#DATABASE_DESIGN)

---

#### RDBMS

Relational Database Management System

- view mechanism - allows us to change the surface apperance our data

- user table - (ID, UN, PW, MAIL)

view1 = (UN, PW)
view2 = (ID, MAIL)

[^^^](#DATABASE_DESIGN)

---
---
---

#### DB_DESIGN

- [link](https://ibm-learning.udemy.com/course/relational-database-design/learn/lecture/1674884#overview)


- an alternative to a database is a flat file
- another option is a spreadsheet

two type of databases:
  - rdbms (common, used for updating)
  - data warehouse (used for reporting, separate)

---
---
---

#### FUNDAMENTALS_DB_ENGINEERING

[link](https://ibm-learning.udemy.com/course/database-engines-crash-course/learn/lecture/30094294#overview)

---

#### ACID

- ATOMICITY
- CONSISTENCY
- ISOLATION
- DURABILITY

---

#### DB_TRANSACTION

- TRANSACTION

```
- a collection of queries
- one unit of work
- (SELECT UPDATE UPDATE)
```

---
