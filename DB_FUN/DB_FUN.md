
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

```
- an alternative to a database is a flat file
- another option is a spreadsheet
```

```
two type of databases:

  - rdbms (common, used for updating)
  - data warehouse (used for reporting, separate)
```

```
- what is datamodeling:

  - process of analysing data requirements and identifying the objects
  to be used for a database
  - a data model is created
```  

```
- data model types:

  - conceptual >> logical >> physical

  - CONCEPTUAL data model:

    - high level
    - relationships between objects
    - usuallyt just names or concepts

    teacher --- class

  - LOGICAL data model:

    - objects at a more detailed level
    - information for each object

    teacher (teacher id, teacher name) --- class (class id, class name, class time)

  - PHYSICAL data model

    - describe the internal schema of the database
    - table names, column names, keys, relationships

    teacher (teacher_id INT(10), first_name VARCHAR(200), active_status INT(1)) >>> school_class (class_id INT(10), start_time DATETIME)
```

```
- Goal of the database:

  - first step
  - what is it trying to achive?
  - what is the purpose?
```

```
- Solution to a problem

  - more than just storing objects
  - not just to "store orders, products, and customers for a store"
  - it is solving a problem: help the store keep track of their sales transactions
  - helps to define the "scope"
```

```
- Scope:

  - thinking of it is as a solution will help define the scope
  - scope = boundary or limit of what the database is for
  - database can get large
  - shouldn't be used for everything  
```

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
