
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [SQL_EXPLORER](https://github.com/ttltrk/TTT/blob/master/SQL/SQL_EXPLORER/SQL_EXPLORER.md)

---

### 03_RDBMS_CONCEPTS

---

```
- definition of a rdbms

A relational db is a collection of relations or two-dimensional tables controlled by server process.
```

```
entity - singular,  uniqie name, upper case, soft box, synonym in parenthesis - EMPLOYEE, DEPARTMENT
attribute - singular name, lowercase, mandatory marked with *, optional marked with o - number, name, location

UID - unique identifier - primary marked with #, secondary marked with '#'
```

Well, our next area of discovery in our Explorer learning path is going to be on relational database management system concepts. Objectives on this one is to describe the RDBMS concepts. And stepping into this one here, every organization has information that it must store and manage to meet its various requirements.

In our situation here, we may want to store information about all employees within our company. That, in turn, here, of course, then delivers here a need here for an employees table, a departments table, possibly even a salary table, and so forth. Which takes us to, then, the definition of a relational database. And it is a collection of relations or two dimensional tables controlled by server processes.

But before we can get to those server processes and those tables, we need to then, in turn, work in what is known as data models. Now, data models, as we work with this one here, really are the cornerstone of system design. And what we are really doing is, in the data model, it helps us communicate the concepts that are in a person's mind and places it down into paper.

And then a designer here can pictorially represent, then, the model of what's in a client's mind right here, and then, in turn, establish and flesh out relationships or entities from that data model. From that entity model here, then, in turn, it allows us to logically generate or create, then, the table instance charts, and thereby allowing us here to create tables on disk.

In working with this one, we need to understand here that an entity or relationship model is an illustration of the various businesses and relationships that we need here to meet the business needs. Of course, in looking at this one here, the ERD model here is a listing of, right, this one shows employees. And the information that is contained within it, of course, is going to be all employee information.

Likewise here for departments here, and their relationships, or their attributes, or their information. And as we look at it here, you'll see that in working with an employee here, may be assigned to a department. And conversely, of course, a department may be composed of employees. That takes us over to the modeling conventions here that we need to understand concerning the ERD.

So first and foremost, the entity is an aspect of something significant or important within the enterprise. It's always singular in name. It's also unique. Normally listed here as upper case. It's placed inside of what's known as a soft box.

And if you have synonyms for it here, they're placed next to the entity singularly named, but enclosed in parentheses, as we illustrate here in this case of the employee and the department. The next thing we see, of course, is the attributes. And the attributes just help describe here or qualifies here that entity.

I consider it here in English, right here, the attribute here is the adjective that helps describe the noun, which would be the entity. Again, when working with this one here, then the relationship, of course, is going to be how these things relate to each other. And that's where we saw that the employees may be assigned here to a department. And of course, then, the departments could be composed of employees.

Final notations that we want to discuss, and this one here is those unique identifiers. If it's the primary, a unique identifier here, it's denoted here with the hashtag. A secondary one, if there is one here, is going to be hashtag, but also, again, enclosed in parentheses.

And there we show that. And finally, of course, and the whole purpose of a relational database is the fact that this information, because it only contains information about, say, employees, and the other table only about departments, we should be able to then, in turn, uniquely, right here, identify those employees. And that's what the primary key is all about.

So on the employees table, you'll see that we have the employee. And, of course, then we've got the department ID and the departments table as well. What we want to be able to do, of course, is to relate these two tables to each other using, of course, these primary keys, and then establishing a relationship, utilizing here, our foreign keys.

So a foreign key in the employee table will allow me here to relate these two tables to each other by virtue of listing then a foreign key column in the employee's table that correlates over to a primary key column in the departments table. That takes us here to 2, and, of course, we'll perform a demonstration on relating multiple tables by using Oracle SQL developer.

---
