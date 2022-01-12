
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### SQL_AND_RDB

---

* [link](https://courses.cognitiveclass.ai/courses/course-v1:BDU+DB0101EN+v1/course/)

---

* [WELCOME](#WELCOME)

MODULE_01 - SQL AND RELATIONAL DB 101

* [INTRO](#INTRO)
* [INFORMATION_AND_DATA_MODELS](#INFORMATION_AND_DATA_MODELS)
* [TYPE_OF_RELATIONSHIPS](#TYPE_OF_RELATIONSHIPS)
* [MAPPING_ENTITIES_TO_TABLES](#MAPPING_ENTITIES_TO_TABLES)
* [RELATIONAL_MODEL_CONCEPTS](#RELATIONAL_MODEL_CONCEPTS)

MODULE_02

* [](#)
* [](#)
* [](#)
* [](#)
* [](#)

MODULE_03

* [](#)
* [](#)
* [](#)
* [](#)
* [](#)

MODULE_04

* [](#)
* [](#)
* [](#)
* [](#)
* [](#)

MODULE_05

* [](#)
* [](#)
* [](#)
* [](#)
* [](#)

---

#### WELCOME

Welcome to SQL and Relational Database 101!
Database software usage is pervasive.
Its presence is everywhere, from retrieving money through an automatic teller machine,
to badge access at a secure office location.
Yet it is basically taken for granted every day by billions of users worldwide.
In computer science, databases are among the most researched domains.
And, there are multiple types of databases to suit various industry requirements.
In this course, you'll learn the relational database model and the basics of the SQL language
through a series of components: There are five modules, covering an introduction to
relational databases (including definitions), information and data models, and relational
model constraints.
You are also introduced to five basic SQL statements, including some advanced techniques
in retrieving data from one or more relational database tables.
At the end of each module, there are three review questions to test your knowledge and
understanding of the concepts.
You'll also be able to apply what you've learned through four hands-on labs so you can try
out these concepts yourself.
Then, you'll be ready to take the 15-question final exam!
From start to finish, this course should take you less than four hours.
And, as Spock said in the movie Wrath of Kahn, "For everything there is a first time".

[^^^](#SQL_AND_RDB)

---

#### INTRO

Hello, and welcome to SQL and Relational Database 101.
First, we will talk a little bit about what you'll learn in this course.
This course teaches you the basics of the SQL language and the relational database model.
This course is the first in a series of courses. There will be some lab exercises, and at the
end of each section, there are a few review questions, and at the end there is a final
exam.
By the end of this course, you will be able to discuss SQL basics and explain various
aspects of the relational database model.
In this video, we will learn about SQL and relational databases.
By the end of this video, you will be able to describe SQL, data, database, a relational
database, and list five basic SQL commands.
So let's get started on SQL and Relational Database 101.
But wait, what is SQL and what is a relational database?
What is SQL?
SQL is a language used for relational databases to query or get data out of a database.
"S Q L" is also referred to as "sequel", and is short for it's original name "Structured
English Query Language".
So SQL is a language used for a database to query data.
So what is data? And what is a database?
Data is a collection of facts in the form of words, numbers, or even pictures.
Data is one of the most critical assets of any business.
It is used and collected practically everywhere.
Your bank stores data about you, your name, address, phone number, account numbers, etc.
Your credit card company, and your Paypal accounts also store data about you.
Data is important. So it needs to be secure, and it needs to be stored and accessed quickly.
The answer is a database.
So, what is a database?
Databases are everywhere, and used every day, but they are largely taken for granted.
A database is a repository of data. It is a program that stores data.
A database also provides the functionality for adding, modifying and querying that data.
There are different kinds of databases of different requirements.
The data can be stored in various forms.
When data is stored in tabular form, the data is organized in tables, like in a spreadsheet
which is columns and rows. That's a relational database.
The columns contain properties about the item, such as Last Name, First Name, email, address,
City.
A table is a collection of related things, like a list of employees, or a list of book
authors.
In a relational database, you can form relationships between tables.
So, a database is a repository of data.
A set of software tools for the data in the database is called a database management system,
or DBMS for short.
The terms database, database server, database system, data server, and database management
systems are often used interchangeably.
For relational databases, it's called a relational database management system, or RDBMS.
RDBMS is a set of software tools that controls the data, such as access, organization, and
storage.
An RDBMS serves as the backbone of applications in many industries including banking, transportation,
health, and so on.
Examples of relational database management systems are: MySQL, Oracle Database, and DB2
Express-C.
For the majority of people using a database, there are 5 simple commands to:
* Create a table * Insert data to populate the table
* Select data from the table * Update data in the table, and
* Delete data from the table
So those are the building blocks for SQL and Relational Database 101.
Now you can describe what is SQL, what is data, what is a database, and, what is a relational
database.
You know that RDBMS stands for relational database management system.
And, you can list 5 basic SQL commands to create a table, insert data to populate the
table, select data from the table, update data in the table, and delete data from the
table.

[^^^](#SQL_AND_RDB)

---

#### INFORMATION_AND_DATA_MODELS

Hello, and welcome to Information models and Data models. In this video, we will
learn about different types of models. At the end of this lesson, you will be able to
describe the difference between an information model and a data model, explain the advantage
of the relational model, and describe the difference between an entity and an attribute.
This figure illustrates the relationship between an Information Model and a Data Model.
An Information Model is an abstract, formal representation of entities that includes their
properties, relationships and the operations that can be performed on them. The entities
being modeled can be from the real world, such as a library. Information Models
and Data Models are different and serve different purposes. An Information Model is at the conceptual
level, and defines relationships between objects. Data Models are defined at a more
concrete level, are specific and include details. A data model is the blueprint of any database
system. There are several types of Information Models. The most popular is the Hierarchical,
typically used to show organization charts. As shown is in this figure, the hierarchical
model organizes its data using a tree structure. The root of the tree is the parent node followed
by child nodes. A child node cannot have more than one parent, however, a parent can have
many child nodes. The first hierarchical database management system was the Information Management
System released by IBM in 1968 and was originally built as the database for the Apollo space
program. The Relational Model is the most used data model for databases because
this model allows for data independence. Data is stored in a simple data structure, tables.
This provides logical data independence, physical data independence, and physical storage independence.
An Entity-Relationship Data Model, or ER Data Model, is an alternative to a relational
data model. Using a simplified library database as an example, this figure shows an Entity-Relationship
Diagram, or ERD, that represents entities (called tables) and their relationships.
We have authors who write books, borrowers who take books out on loan, various copies
of each book, etc. This is the final ER diagram. But how do we get there? An Entity-Relationship
Model proposes thinking of a database as a collection of entities. Rather than being
used as a model on its own, the ER Model is used as a tool to design relational databases.
In the ER Model, entities are objects that exist independently of any other entities
in the database. It is simple to convert an ER Diagram into a collection of tables.
The building blocks of an ER Diagram are entities and attributes. Entities have attributes,
which are the data elements that characterize the entity. Attributes tell us more about
the entity. In an ER Diagram, an entity is drawn as a rectangle, and attributes are drawn
as ovals. Entities can be a noun (person, place, or thing). Using a simplified library
as an example, a book is an example of an entity. Attributes are certain properties
or characteristics of an entity, and tell us more about the entity. The entity Book
has attributes such as book title, the edition of the book, the year the book was written,
etc. Attributes are connected to exactly one entity. The entity Book becomes a table
in the database, and the attributes become the columns in a table. Continuing the
simplified library example, books are written by authors. Book is an entity, and Author
is an entity . For the entity Author, the ER Diagram would look like this. The entity
Author has attributes such as the author's last name, first name, email, city, country
and an author ID (to uniquely identify the author). The entity Author becomes a table
in the database, and the attributes become the columns in the table. In the simplified
library database, we progress through the process of identifying entities, such as borrowers
who take books out on loan, various copies of each book, and copies of books out on loan.
This is the final ER Diagram. Each entity becomes a table in the database. You
can now describe the difference between an information model and a data model, explain
the advantage of the relational model, and describe the difference between an entity
and an attribute

[^^^](#SQL_AND_RDB)

---

#### TYPE_OF_RELATIONSHIPS

Hello, and welcome to Types of Relationships.
In this video, we will provide an overview
of the relationships that exists between entities. At the end of this lesson, you will be able
to describe the building blocks of a relationship, explain the symbols used in a relationship
set, and describe the difference between the one-to-one and many-to-many relationship.
The building blocks of a relationship are: entities, relationship sets, and crows
foot notations. Entity sets are represented by a rectangle. Relationship sets are represented
by a diamond, the lines connecting associated entities. Different techniques are used in
representing relationships. For ease of understanding, this lesson uses the crows foot notations.
Some of these are the greater-than symbol, the less-than symbol and a vertical line.
An Entity-Relationship diagram, or ER diagram, for the entity book would look like this.
The entity, Book, is drawn as a rectangle, and the attributes are drawn as ovals. Attributes
are certain properties of that entity, for example title, edition, year, price, etc.
Attributes are connected to exactly one entity. For the entity Author, the ER diagram
would look like this. The entity Author has attributes last name, first name, email, city,
country and author ID. Let's see how the entities Book and Author relate to each other.
A book must be written by at least one author. However, a book can be written by two authors.
and a book can be written my many authors. As another example, one author can write
just one book, or two books or multiple books. In both cases, there is a relationship between
the book and the author.
In our examples we see that a book needs at least one author.
The relationship set that comes here is authored-by. One book must be written by one author.
The thick lines indicate each entity in the entity set is involved in at least one and exactly
one relationship. This is called a one-to-one relationship. Only entities are used in the
relationship diagrams. Attributes are omitted because they can clutter the diagrams.
Earlier we saw that more than one author can write a book. This can be represented
with a different notation called crows foot notation. In this case, a less than symbol.
This indicates, that one book entity is participating in more than one relationship in the relationship set.
This is called a one-to-many relationship. This could also be called a many-to-one relationship
in that many authors write a single book.
To represent many authors writing many
books, use the greater-than and less-than symbols on either side of the relationship set.
This is called a many-to-many relationship. Each entity in the entity set is participating
in more than one relationship. Many books being written by many authors, or, many authors
writing many books. You can now describe the building blocks of a relationship, explain
the symbols used in a relationship set, and describe the difference between the one-to-one
and many-to-many relationship.

[^^^](#SQL_AND_RDB)

---

#### MAPPING_ENTITIES_TO_TABLES

Hello, and welcome to Mapping Entities to Tables.
In this video, we will learn how entities are mapped to relational database tables.
At the end of this lesson, you will be able to explain how an E-R Diagram translates into
a relational database table with rows and columns.
Entity Relationship Diagrams are the basic foundation for designing a database.
In the relational database design, begin with an ER diagram, or ERD, and later map the ERD
to the tables in a database.
In this example, we use the ERD for entity Book.
Entity Book has several attributes.
The entity and its attributes will be mapped to a table.
For ease of understanding, lets separate the entity from the attributes.
In this case, entity Book becomes a table with the same name Book.
All the attributes translate into columns in the table.
We will now see how a table would be represented in a Relational database model.
A table is a combination of rows and columns.
While mapping, the entity becomes the table.
Having said that, the table has not yet taken the form of rows and columns.
The attributes get translated into columns in a table providing the actual table form
of rows and columns.
Later we add some data values to each of the columns, which completes the table form.
For the Author example, the entity Author becomes the table, and the attributes get
translated to columns in the table.
Adding some data values into the columns complete the table.
You can now explain how an E-R Diagram translates into a relational database table with rows
and columns.

[^^^](#SQL_AND_RDB)

---

#### RELATIONAL_MODEL_CONCEPTS



[^^^](#SQL_AND_RDB)

---

####

```

```

[^^^](#SQL_AND_RDB)

---

####

```

```

[^^^](#SQL_AND_RDB)

---

####

```

```

[^^^](#SQL_AND_RDB)

---

####

```

```

[^^^](#SQL_AND_RDB)

---

####

```

```

[^^^](#SQL_AND_RDB)

---

####

```

```

[^^^](#SQL_AND_RDB)

---

####

```

```

[^^^](#SQL_AND_RDB)

---
