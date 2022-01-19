
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

* [RM_CONSTRAINTS_INTRO](#RM_CONSTRAINTS_INTRO)
* [RM_CONSTRAINTS_ADVANCED](#RM_CONSTRAINTS_ADVANCED)
* [PRIMARY_KEYS](#PRIMARY_KEYS)
* [SEMANTIC_INTEGRITY](#SEMANTIC_INTEGRITY)
* [SEMANTIC_CONSTRAINTS](#SEMANTIC_CONSTRAINTS)

MODULE_03

* [TYPE_OF_SQL_STATEMENTS](#TYPE_OF_SQL_STATEMENTS)
* [CREATE_TABLE_STATEMENT](#CREATE_TABLE_STATEMENT)
* [INSERT_STATEMENT](#INSERT_STATEMENT)
* [SELECT_STATEMENT](#SELECT_STATEMENT)
* [UPDATE_AND_DELETE_STATEMENT](#UPDATE_AND_DELETE_STATEMENT)

MODULE_04

* [STRING_PATTERNS_RANGES_SETS](#STRING_PATTERNS_RANGES_SETS)
* [SORTING_RESULT_SET](#SORTING_RESULT_SET)
* [GROUPING_RESULT_SETS](#GROUPING_RESULT_SETS)

MODULE_05

* [JOINS_OVERVIEW](#JOINS_OVERVIEW)
* [INNER_JOIN](#INNER_JOIN)
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

Hello, and welcome to Relational Model Concepts.
In this video, we will learn the history of the relational model, and some relational
terms.
At the end of this lesson, you will be able to define the relational terms: relation,
degree, and cardinality, and, explain the difference between a relational schema and
a relational instance.
The relational model was first proposed in 1970, and is based on a mathematical model
and mathematical terms.
The building blocks of the Relational Model are: Relation and Sets.
The Relational Model of data is based on the concept of relation.
A relation is a mathematical concept based on the idea of sets.
A set is an unordered collection of distinct elements.
It is a collection of items of the same type.
It would have no order and no duplicates.
A relational database is a set of relations.
A relation is also the mathematical term for a table.
A table is a combination of rows and columns.
A Relation is made up of 2 parts: Relational Schema and Relational Instance.
The Relational Schema specifies: the name of a relation, name and type of each of the
columns, which are the attributes.
The example here is the entity Author.
Author is the name of the relation.
Author_ID is an attribute which can hold the data type char, which is a character string
of a fixed length.
Likewise last name, first name, email and city have the data type varchar, which is
a character string of a variable length.
The last attribute, Country, also has a data type of char.
This constitutes the Relational Schema.
A Relational Instance is a table made up of rows and columns.
The columns are the attributes, or fields.
The rows are tuples.
Degree refers to the number of attributes, or columns, in a relation.
Cardinality refers to the number of tuples, or rows.
In this example, the Degree is 6 because there are 6 columns, and the Cardinality is 5 because
there are 5 tuples, or rows.
You have heard a lot of new terms in this session.
Let's review them.
The Relational Model of data is based on the concept of relation.
A relation is a mathematical concept based on idea of sets, and is the mathematical term
for a table.
A Relation is made up of 2 parts: Relational Schema and Relational Instance.
A Relational Schema specifies: the name of a relation, and the attributes.
A Relational Instance is a table made up of the attributes, or columns, and the tuples,
or rows.
Degree refers to the number of attributes, or columns, in a relation.
Cardinality refers to the number of tuples, or rows in a relation.
You can now define the relational terms: relation, degree, and cardinality, and, explain the
difference between a relational schema and a relational instance.

[^^^](#SQL_AND_RDB)

---

#### RM_CONSTRAINTS_INTRO

Hello, and welcome to an introduction to Relational Model Constraints.
This video provides an overview.
We will learn about referencing between entities and we will learn some new terminology that
is used in a relational model.
At the end of this lesson, you will be able to explain referencing, differentiate between
a primary key and foreign key, and identify a parent table and a dependent table.
Within any business, data must adhere to certain restrictions or rules.
In this lesson, we will use the Book and Author example.
At least one author writes one book.
This is a one-to-one relationship.
To look up the Author information, the Book entity refers to the Author entity.
To look up the Book information, the Author entity refers to the Book entity.
In a relational data model this is called referencing.
In relational databases, this establishes the data integrity between two relations.
The Entity-Relationship Diagram represents the Relational Data Model for the Author entity
and Book entity as part of a simplified library database model.
Other entities have been added, such as Borrower, Loan, Copy, and Author List.
Notice that the attributes Author_ID, Book_ID, and Borrower_ID have a special icon.
This identifies the Primary Key.
A Primary Key of a relational table uniquely identifies each row in a table.
Notice the entities on the lower half of the
screen.
Some attributes have FK in brackets next to them.
For example, the Copy entity has attribute Book_ID with the FK in brackets.
This identifies the Foreign Key.
A Foreign Key is a set of columns referring to a primary key of another table.
These entities are part of the relationship set between the entities above them.
All of the entities have a one-to-many relationship established between them.
Let's learn a couple of new terms that are used in a relational model.
A table containing a primary key that is related to at least one foreign key is called a Parent
table.
In the example, the Author entity is the parent table.
The Book entity is also a parent table.
A table containing one or more foreign keys is called a dependent table.
It might also be referred to as a child table.
In the example, the Author_List entity has foreign keys that refer to different parent
tables, Author and Book.
There's more to learn about Relational Model Constraints, but with this overview, now you
can explain referencing, differentiate between a primary key and foreign key, and identify
a parent table and a dependent table.

[^^^](#SQL_AND_RDB)

---

#### RM_CONSTRAINTS_ADVANCED

Within any business, data must often adhere to certain restrictions or rules.
Constraints help implement the business rules.
In a relational data model,
data integrity can be achieved using integrity rules or constraints.
The following six constraints are defined in
a relational database model: entity integrity constraint,
referential integrity constraint, semantic integrity constraint,
domain constraint, null constraint, and check constraint.
We will discuss each of these relational model constraints.
To identify each topple in a relation,
the relation must have a primary key.
The primary key is a unique value that identifies each topple or row in a table.
This is the entity integrity constraint.
The terms primary and key constraint or unique constraint are also used.
This constraint prevents duplicate values in a table.
To implement these constraints, indexes are used.
The entity integrity constraint states that no attribute participating in
the primary key of a relation is allowed to accept null values.
The value null indicates that the value is unknown.
In the entity integrity constraint,
the primary key cannot have an unknown value.
For example, in the relation author,
author_ID is the primary key.
The primary key identifies each topple in the relation.
The author_IDA1 points to author Raul Chong from Toronto.
If we replace the value A1 with null,
we can still identify the author as Raul Chong.
However, if we also replace author_IDA4 with null,
now we do not know which null value identifies which topple.
With the entity integrity constraint,
no attribute participating in the primary key is allowed to accept null values.
Referential integrity constraint defines relationships
between tables and ensures that these relationships remain valid.
The validity of the data is enforced using
a combination of primary keys and foreign keys.
As mentioned previously, for a book to exist,
it has to be written by at least one author.
The semantic integrity constraint refers to the correctness of the meaning of the data.
For example, in the relation author,
if the attribute or column city contains a garbage value instead of Toronto,
the garbage value does not have any meaning.
The semantic integrity constraint is related to the correctness of the data.
A domain constraint specifies the permissible values for a given attribute.
For example, in the relation author,
the attribute country must contain
a two letter country code such as CA for Canada or IN for India.
If a number value of 34 is entered for
the country attribute instead of a two letter country code,
the value 34 does not have any meaning.
As we saw previously,
the entity integrity constraint states that no attribute
participating in the primary key is allowed to accept null values.
The null constraint specifies that attribute values cannot be null.
For example, in the relation author,
if either last name or first name contains a null value,
it could be difficult to identify the correct author.
In this example, first name and last name
attribute values cannot be null and author must have a name.
The check constraint enforces domain integrity
by limiting the values that are accepted by an attribute.
The relation author does not have a suitable attribute to explain the check constraint,
so we will use the relation book.
In the relation book,
the attribute year is the year in which a particular book is published.
If this was still the year 2010,
it would not be meaningful to have a year greater than the current year.
The check constraint would enforce the domain integrity by
limiting the values that are accepted by the attribute year.
Now you can describe the six different types of relational model constraints.

[^^^](#SQL_AND_RDB)

---

#### PRIMARY_KEYS

If a relation schema has more than one key, then each key is called a candidate key.One of the candidate keys is designated as the primary key, and the others are called secondary keys.

In a practical relational database, each relation schema must have a primary key.

Rules for primary keys:
The value of the Primary Key must be unique for each instance of the entity.

- There can be no missing values( ie. Not Null) for Primary Keys. If the Primary Key is composed of multiple attributes, each of those attributes must have a value for each instance.
- The Primary Key is immutable.i.e., once created the value of the Primary Key cannot be changed.
If the Primary Key consists of multiple attributes, none of these values can be updated.

[^^^](#SQL_AND_RDB)

---

#### SEMANTIC_INTEGRITY

Semantic integrity ensures that data entered into a row reflects an allowable value for that row. The value must be within the domain, or allowable set of values, for that column. For example, the quantity column of the items table permits only numbers. If a value outside the domain can be entered into a column, the semantic integrity of the data is violated.

[^^^](#SQL_AND_RDB)

---

#### SEMANTIC_CONSTRAINTS

Semantic Constraints are constraints that cannot be directly expressed in the schemas of the data model. Semantic constraints are also called application-based rules or business rules.  They are additional rules specified by users or database administrators. For example, a class can have a maximum of 30 students; salary of an employee cannot exceed the salary of the employee’s manager.

Domain constraints specify that within a tuple the value of each attribute must be an element from the domain of that attribute. The data types associated with the domains include:

- Integers (short integer, integer, long integer)
- Real numbers (float and double precision float)
- Characters
- Booleans
- Fixed-length strings and variable length strings
- Date, time, timestamp
- Money
- Other special data types

Other possible domain values may be a sub-range of values from a data type or as an enumerated data type in which values are explicitly listed.

[^^^](#SQL_AND_RDB)

---

#### TYPE_OF_SQL_STATEMENTS

At the end of the video, you will be able to distinguish between data definition language
statements and data manipulation language statements.
SQL Statements are used for interacting with Entities (that is, tables),
Attributes (that is, columns) and their tuples (or rows with data values) in relational databases.
SQL statements fall into two different categories:
Data Definition Language statements and Data Manipulation Language statements.
Data Definition Language (or DDL) statements are used to define, change, or drop database
objects such as tables.
Common DDL statement types include CREATE, ALTER, TRUNCATE, and DROP.
CREATE: which is used for creating tables and defining its columns;
ALTER: is used for altering tables including adding and dropping columns and modifying
their datatypes;
TRUNCATE: is used for deleting data in a table but not the table itself;
DROP: is used for deleting tables.
Data Manipulation Language (or DML) statements are used to read and modify data in tables.
These are also sometimes referred to as CRUD operations,
that is, Create, Read, Update and Delete rows in a table.
Common DML statement types include INSERT, SELECT, UPDATE, and DELETE.
INSERT: is used for inserting a row or several rows of data into a table;
SELECT: reads or selects row or rows from a table;
UPDATE: edits row or rows in a table;
And DELETE: removes a row or rows of data from a table.
Now you know that:
DDL or Data Definition Language statements are used for defining or changing objects
in a database such as tables.
And DML or Data Manipulation Language statements are used for manipulating or working with
data in tables.

[^^^](#SQL_AND_RDB)

---

#### CREATE_TABLE_STATEMENT

In this video, we will learn how to create a relational database table.
At the end of the video,
you will be able to distinguish between
data definition language statements and data manipulation language statements,
and explain how the entity name and attributes
are used to create a relational database table.
SQL Statements are used for interacting with Entities (that is Tables),
Attributes (that is Columns) and their tuples (or rows with data values) in relational databases.
SQL statements fall into two different categories:
Data Definition Language statements, and Data Manipulation Language statements.
Data Definition Language (or DDL) statements are used to define, change, or drop database objects such as tables.
Common DDL statement types include: CREATE, ALTER, TRUNCATE and DROP.
CREATE: which is used for creating tables and defining its columns
ALTER: is used for altering tables including adding and dropping columns and modifying their datatypes
TRUNCATE: is used for deleting data in a table but not the table itself
DROP: is used for deleting tables
Data Manipulation Language (or DML) statements are used to read and modify data in tables.
These are also sometimes referred to as CRUD operations,
that is, Create, Read, Update and Delete rows in a table.
Common DML statement types include: INSERT, SELECT, UPDATE and DELETE .
INSERT: is used for inserting a row or several rows of data into a table
SELECT: reads or selects row or rows from a table
UPDATE: edits row or rows in a table
And DELETE: removes a row or rows of data from a table
Now let’s look at the most common DDL statement – CREATE.
The syntax of the CREATE table is shown here:
You start with “CREATE TABLE” followed by the name of the table you want to create
Then enclose rest of the statement inside a pair of parenthesis or round brackets.
Each row inside the parenthesis specifies the name of a column followed by its datatype
and possibly some additional optional values that we will see later.
Each attribute or column definition is separated by a comma.
For example, if we want to create a table for provinces in Canada you would specify:
CREATE TABLE provinces (id char(2) Primary key not null comma name varchar(24) close parenthesis
In this example, the data types used are: CHAR which is a character string of a fixed length, in this case 2.
And VARCHAR, which is a character string of a variable length.
In this case, this variable character field can be up to 24 characters long.
Issuing this statement would create a table in the database with 2 columns.
The first column id for storing the abbreviated 2 letter province short codes such as AB , BC, etc.
And the second column called name for storing the full name of the province, such as ALBERTA, BRITISH COLUMBIA, etc.
Now, let’s look at a more elaborate example based on the Library database.
This database includes several entities such as AUTHOR, BOOK, BORROWER, etc.
Let’s start by creating the table for the AUTHOR entity.
The name of the table will be AUTHOR, and its attributes
such as AUTHOR_ID, FIRSTNAME, LASTNAME, etc. will be the columns of the table.
In this table, we will also assign the Author_ID attribute as the Primary Key,
so that no duplicate values can exist.
Recall, the Primary Key of a relational table uniquely identifies each tuple (or row) in a table.
To create the Author table, issue the following command:
CREATE TABLE author ( author_id CHAR(2) PRIMARY KEY NOT NULL, lastname VARCHAR(15) NOT NULL,
firstname VARCHAR(15) NOT NULL, email VARCHAR(40), city VARCHAR(15), country CHAR(2) )
Note that the Author_ID is the Primary Key.
This constraint prevents duplicate values in the table.
Also note that Last Name and First Name have the constraint NOT NULL.
This ensures that these fields cannot contain a NULL value, since an author must have a name.
Now you know that:
DDL or Data Definition Language statements are used for defining or changing objects
in a database such as tables.
DML or Data Manipulation Language statements are used for manipulating or working with data in tables.
CREATE is a DDL statement for creating Entities or tables in a database.
The CREATE TABLE statement includes definition of attributes of columns in the table, including
Names of columns
Datatypes of columns
And other Optional values if required such as the Primary Key constraint

[^^^](#SQL_AND_RDB)

---

#### INSERT_STATEMENT

At the end of this video, you'll be able to identify the syntax of
the INSERT statement and explain two methods to add rows to a table.
After table is created,
the table needs to be populated with data.
To insert data into a table,
we use the INSERT statement.
The INSERT statement is used to add new rows to a table.
The INSERT statement is one of the data manipulation language statements.
Data manipulation language statements or DML statements are used to read and modify data.
Based on the author entity example,
we created the table using the entity name author,
and the entity attributes as the columns of the table.
Now we will add the data to the author table by adding rows to the table.
To add the data to the author table,
we use the INSERT statement.
The syntax of the INSERT statement looks like this,
insert into table name, column name, values.
In this statement, table name identifies the table,
the column name list identifies each column in the table,
and the values clause specifies the data values to be added to the columns in the table.
To add a row with the data for Raul Chong,
we insert a row with an author underscore ID of A one,
the last name is Chong,
the first name as Raul,
the email as RFC@IBM.com,
the city is Toronto,
and the country as CA for Canada.
The author table has six columns,
so the INSERT statement lists the six column names separated by commas,
followed by a value for each of the columns also separated by commas.
It is important that the number of values provided in the values clause
is equal to the number of column names specified in the column name list.
This ensures that each column has a value.
Tables do not need to be populated one row at a time,
multiple rows can be inserted by specifying each row in the values clause.
In the values clause,
each row is separated by a comma.
For example, in this INSERT statement we are inserting two rows,
one for Raul Chong and one for Rav Ahuja.
Now you can identify the syntax of the INSERT statement,
and explain the two methods to add rows to a table.
One row at a time or multiple rows.

[^^^](#SQL_AND_RDB)

---

#### SELECT_STATEMENT

In this video, we will learn about retrieving data from
a relational database table by selecting columns of a table.
At the end of this lesson,
you will be able to retrieve data from a relational database table,
to find the use of a predicate,
identify the syntax of the SELECT statement using the WHERE clause, and
list the comparison operators supported by a relational database management system.
The main purpose of a database management system,
is not just to store the data but also facilitate retrieval of the data.
So, after creating a relational database table and inserting data into the table,
we want to see the data.
To see the data, we use the SELECT statement.
The SELECT statement is a data manipulation language statement.
Data Manipulation Language statements or DML statements are used to read and modify data.
The SELECT statement is called a query,
and the output we get from executing this query is called a result set or a result table.
In its simplest form, a SELECT statement is select star from table name.
Based on the book entity example,
we would create the table using
the entity name book and the entity attributes as the columns of the table.
The data would be added to the book table by adding
rows to the table using the insert statement.
In the book entity example, select star from book gives the result set of four rows.
All the data rows for all columns in the table book are displayed.
In addition, you can also retrieve all the rows for all columns by
specifying the column names individually in the SELECT statement.
You don't always have to retrieve all the columns in a table.
You can retrieve just a subset of columns.
If you want, you can retrieve just two columns from the table book.
For example book_id and title.
In this case, the select statement is select book_id, title from book.
In this case, only the two columns display for each of the four rows.
Also notice that the order of the columns displayed
always matches the order in the SELECT statement.
However, what if we want to know the title of the book whose book_id is B1.
Relational operation helps us in restricting
the result set by allowing us to use the clause WHERE.
The WHERE clause always requires a predicate.
A predicate is conditioned evaluates to true, false or unknown.
Predicates are used in the search condition of the WHERE clause.
So, if we need to know the title of the book whose book_id is B1,
we use the WHERE clause with the predicate book_id equals B1.
Select book_id title from book where book_id equals B1.
Notice the result set is now restricted to
just one row whose condition evaluates to true.
The previous example used comparison operator equal to in the WHERE clause.
There are other comparison operators supported by
a relational database management system: equal to,
greater than, less than,
greater than or equal to,
less than or equal to, and not equal to.
Now you can retrieve data and select columns from a relational database table,
define the use of a predicate,
identify the syntax of the SELECT statement using the WHERE clause, and
list the comparison operators supported by a relational database management system.

[^^^](#SQL_AND_RDB)

---

#### UPDATE_AND_DELETE_STATEMENT

In this video, we will learn about altering and
deleting data in a relational database table.
At the end of this lesson,
you will be able to identify the syntax of the UPDATE statement and
DELETE statement and explain the importance of the WHERE clause in these statements.
After a table is created and populated with data,
the data in a table can be altered with the UPDATE statement.
The UPDATE statement is one of the data manipulation language or DML statements.
DML statements are used to read and modify data.
Based on the author entity example,
we created the table using the entity name
Author and the entity attributes as the columns of the table.
Rows were added to the Author table to populate the table.
Sometime later, you want to alter the data in the table.
To alter or modify the data in the Author table,
we use the UPDATE statement.
The syntax of the UPDATE statement looks like this,
UPDATE [TableName] SET [ColumnName] = [Value] ]> .
In the statement, TableName identifies the table.
The ColumnName identifies the column value to be changed,
as specified in the .
Let's look at an example.
In this example, you want to update the FIRSTNAME and LASTNAME of
the author with AUTHOR_ID A2 from Rav Ahuja to Lakshmi Katta.
In this example, to see the UPDATE statement in action,
we start by selecting all rows from the author table to see the values.
To change the first name and last name to Lakshmi Katta where the AUTHOR_ID = A2,
enter the UPDATE statement as follows.
UPDATE AUTHOR SET LAST NAME = KATTA,
FIRST NAME = LAKSHMI WHERE AUTHOR_ID = A2.
Now, to see the result of the update,
select all rows again from the Author table and you will see that in row
to the name changed from Rav Ahuja to Lakshmi Katta.
Note that if you do not specify the WHERE clause,
all the rows in the table will be updated.
In this example, without specifying the WHERE clause all rows in
the table would have changed the first and last names to Lakshmi Katta.
Sometime later, there might be a need to remove one or more rows from a table.
The rows are removed with the DELETE statement.
The DELETE statement is one of
the data manipulation language statements used to read and modify data.
The syntax of the DELETE statement looks like this,
DELETE FROM [TABLEName] .
The rows to be removed are specified in the WHERE condition.
Based on the author entity example,
we want to delete the rows for AUTHOR_ID A2 and A3.
Let's look at an example.
DELETE FROM AUTHOR WHERE AUTHOR_ID IN ('A2','A3').
Note that if you do not specify the WHERE clause,
all the rows in the table will be removed.
Now you can identify the syntax of the UPDATE statement and
DELETE statement and explain the importance of the WHERE clause in these statements.

[^^^](#SQL_AND_RDB)

---

#### STRING_PATTERNS_RANGES_SETS

In this video we will learn about some advanced techniques in retrieving data from
a relational database table.
At the end of this lesson, you will be able to describe how to simplify a SELECT statement
by using string patterns, ranges, or sets of values.
The main purpose of a database management system is not just to store the data, but
also facilitate retrieval of the data.
In its simplest form, a SELECT statement is: 6 select * from tablename Based on our
simplified library database model, and the table Book, select * from book gives a result
set of four rows.
All the data rows for all columns in the table Book are displayed.
Or you can retrieve a subset of columns, for example, just two columns from the table
Book, such as book_id and title.
Or you can restrict the result set by using the WHERE clause.
For example, you can select the title of the book whose book_id is B1. But what if
we don't know exactly what value to specify in the WHERE clause?
The Where clause always requires a predicate, which is a condition that evaluates to true,
false or unknown.
But what if we don?t know exactly what value the predicate is?
For example, what if we can't remember the name of the author, but we remember that
their first name starts with R?
In a relational database, we can use string patterns to search data rows that match this
condition.
Lets look at some examples of using string patterns.
If we can't remember the name of the author, but we remember that their first name starts
with R, we use the Where clause with the LIKE predicate.
The LIKE predicate is used in a WHERE clause to search for a pattern in a column.
The percent sign is used to define missing letters.
The percent sign can be placed before the pattern, after the pattern, or both before
and after the pattern.
In this example, we use the percent sign after the pattern, which is the letter R.
The percent sign is called a wildcard character.
A wildcard character is used to substitute other characters.
So, if we can't remember the name of the author, but we can remember that their first name
starts with the letter R, we add the LIKE predicate to the Where clause.
For example, select FirstName from Author where FirstName like R%.
This will return all rows in the Author table whose authors first name starts with
the letter R. And here is the result set.
Two rows are returned for authors Raul and Rav. What if we wanted to
retrieve the list of books whose number of pages is more than 290 but less than 300.
We could write the select statement like this, specifying the WHERE clause as: WHERE pages
is greater-than or equal to 290 AND pages is less-than or equal to 300.
But in a relational database, we can use a range of numbers to specify the same
condition.
Instead of using the Comparison Operators greater-than or equal to, we use the Comparison
Operator BETWEEN AND.
BETWEEN AND compares two values.
The values in the range are inclusive.
In this case, we re-write the query to specify the WHERE clause as: WHERE pages
BETWEEN 290 AND 300.
The result set is the same, but the SELECT statement is easier and quicker to write.
In some cases there are data values that cannot be grouped under ranges.
For example, if we want to know which countries the authors come from.
If we wanted to retrieve authors from Australia or Brazil, we could write the SELECT statement
with the WHERE clause repeating the two country values.
However, what if we want to retrieve authors from Canada, India, and China?
The WHERE clause would become very long repeatedly listing the required country conditions.
Instead, we can use the IN operator.
The IN operator allows us to specify a set of values in a WHERE clause.
This operator takes a list of expressions to compare against.
In this case, the countries Australia or Brazil.
Now you can describe how to simplify a SELECT statement by using string patterns,
ranges, or sets of values.

[^^^](#SQL_AND_RDB)

---

#### SORTING_RESULT_SET

about some advanced techniques in retrieving data from a relational database table and
sorting how the result set displays. At the end of this lesson, you will be able to describe
how to sort the result set by either ascending or descending order and explain how to indicate
which column to use for the sorting order.
The main purpose of a database management
system is not just to store the data, but also facilitate retrieval of the data.
In its simplest form, a SELECT statement is: select * from tablename. Based on our simplified
library database model, and the table Book, select * from book gives a result set of
four rows. All the data rows for all columns in the table Book are displayed.
We can choose to list the book titles only, as shown in this example, select title from book. However,
the order does not seem to be in any order. Displaying the result set in alphabetical
order would make the result set more convenient. To do this, we use the ORDER BY clause.
To select the result set in alphabetical order,
we add the ORDER BY clause to the SELECT statement.
The ORDER BY clause is used in a query to sort the result set by a specified
column. In this example, we have used ORDER BY on the column Title to sort the result set.
By default, the result set is sorted in ascending order. In this example, the result
set is sorted in alphabetical order by book title.
To sort in descending order, we use the keyword DESC.
The result-set is now sorted according to the specified column ,
which is Title, and is sorted in descending order. Notice the order of the first three rows.
The first three words of the title are the same. So, the sorting starts at the
point where the characters differ. Another way of specifying the sort column is to indicate
the column sequence number. In this example, select title, pages from book ORDER BY 2
indicates the column sequence number in the query for the sorting order.
Instead of specifying the column name Pages, the number 2 is used. In the SELECT statement, the second
column specified in the column list is "Pages", so the sort order is based on the values in
the Pages column. In this case, the Pages column indicates the number of pages in the book.
As you can see, the result set is in an ascending order by number of pages.
Now you can describe how to sort the result set by either ascending or descending order,
and explain how to indicate which column to use for the sorting order.

[^^^](#SQL_AND_RDB)

---

#### GROUPING_RESULT_SETS

In this video we will learn about some advanced techniques in retrieving data from
a relational database table, and sorting and grouping how the result set displays.
At the end of this lesson, you will be able to explain how to eliminate duplicates from
a result set, and describe how to further restrict a result set.
At times, a SELECT statement result set can contain duplicate values.
Based on our simplified library database model, in the Author table example the Country
column lists the two-letter country code of the authors country.
If we select just the Country column, we get a list of all the countries.
For example, SELECT Country from Author ORDER BY 1.
The ORDER BY clause sorts the result set.
This result set lists the countries that authors belong to, sorted alphabetic ally by Country.
In this case, the result set displays 20 rows, one row for each of the 20 authors.
But some of the authors come from the same country.
So, the result set contains duplicates.
However, all we need is list of countries that authors come from.
So, in this case, duplicates do not make sense.
T o eliminate duplicates, we use the keyword DISTINCT.
Using the keyword DISTINCT reduces the result set to just 6 rows.
But what if we wanted to also know how many authors come from the same country?
So, now we know that the 20 authors come from 6 different countries.
But, we might want to also know how many authors come from the same country.
To display the result set listing the country and number of authors that come from that
country, we add the GROUP BY clause to the SELECT statement.
The GROUP BY clause groups a result into subsets that has matching values for
one or more columns.
In this example, countries are grouped and then counted using the COUNT function.
Notice the column heading for the 2nd column in the result set.
The numeric value 2 displays as a column name
because the column name is not directly available in the table.
The second column in the result set was calculated by the COUNT function.
Instead of using the column name 2, we can assign a column name to the result set.
We do this using the AS keyword.
In this example, we change the derived column name 2 to column name Count using the
AS COUNT keyword.
This helps clarify the meaning of the result set.
Now that we have the count of authors from different countries, we can further restrict
the number of rows by passing some conditions.
For example, we can check if there are more than 4 authors from the same country.
To set a condition to a GROUP BY clause, we use the keyword HAVING.
The HAVING clause is used in combination with the GROUP BY clause.
It is very important to note that the WHERE clause is for the entire result set, but the
HAVING clause works only with the GROUP BY clause.
To check if there are more than 4 authors from the same country, we add the following
to the SELECT statement: HAVING Count Country> 4.
Only countries that have 5 or more authors from that country are listed in the result set.
In this example, those countries are China with 6 authors, and India also with 6 authors.
Now you can explain how to eliminate duplicates from a result set, and describe
how to further restrict a result set.


[^^^](#SQL_AND_RDB)

---

#### JOINS_OVERVIEW

In this video, we will learn about JOINing two tables to create a result set.
At the end of this lesson, you will be able to define the JOIN operator,
explain the role of primary keys and foreign keys in a JOIN operation,
and list different types of JOIN operators.
A simple select statement retrieves data from one or more columns from a single table.
The next level of complexity is retrieving data from two or more tables.
This leads to multiple possibilities of how the ResultSet is generated.
To combine data from two tables,
we use the JOIN operator.
A JOIN combines the rows from two or more tables
based on a relationship between certain columns in these tables.
Based on the book and author entity examples,
these are part of a simplified library database model.
This entity relationship diagram represents the relational data model for
the author and book entity as well as other entities such as borrower,
loan, copy, and author list.
In this model, the information is split into different tables.
If you wanted to know which borrower has which copy of a book out on loan,
you need to gather data from three tables:
the borrower, loan, and copy tables.
This is when you need to use the JOIN operator.
With the JOIN operator,
you are combining data from more than one table based on
a relationship between certain columns in these tables.
So, the first thing you need to do is identify the relationship between those tables.
That is, the column or columns in
each table that will be used as a link between the tables.
In this entity relationship diagram, notice the author_ID,
book_ID, borrower_ID, and copy_ID had the primary key icon.
A primary key uniquely identifies each row in a table.
Notice also the entities on the lower half of the screen-
some attributes have FK in brackets next to them.
For example, the copy entity has attribute book_ID with the FK in brackets.
This identifies the foreign key.
A foreign key is a set of columns referring to a primary key of another table.
So, if you wanted to know which borrower has a book out on loan,
you need to gather data from the borrower and loan tables.
You will need the borrower ID from both tables.
SQL offers you several different types of JOINs.
It all depends on what you are looking for.
For example, you can extract a data set corresponding to
the intersection of the two tables involved or you can choose a bigger data set.
You can go up to the point of selecting
the combination of all the data from those two tables.
Now, you can define the JOIN operator,
explain the role of primary keys and foreign keys in a JOIN operation,
and list different types of JOIN operators.

[^^^](#SQL_AND_RDB)

---

#### INNER_JOIN

In this video, we will learn about joining two tables to create a result set.
At the end of this lesson,
you will be able to explain the sequel syntax to
join two or more tables and interpret the result set.
A simple select statement retrieves data from one or more columns from a single table.
The next level of complexity is retrieving data from two or more tables.
This is referred to as joining tables.
A join combines the rows from two or more tables based
on a relationship between certain columns in these tables.
There are two types of table joins: inner join and outer join.
The most common type of join is the inner join.
An inner join matches the results from two tables and displays
only the result set that matches the criteria specified in the query.
An inner join returns only the rows that match.
Based on our simplified library database model,
if we want to check the names of people who have borrowed a book,
this information is split between two tables.
We need to find the names of people from the borrower table,
who are listed in the loan table.
So we need to identify the relationship between the two tables.
We do this by identifying a column in each table to link the tables.
In this example, we do this by matching the borrower ID,
notice that the column borrower ID exists in both the borrower table as the primary key,
and the loan table as the foreign key.
A primary key uniquely identifies each row in a table.
A foreign key is a set of columns referring to a primary key of another table.
We use the inner join operator to match
occurrences of the borrower ID in the borrower table,
with occurrences of the borrower ID in the loan table.
This is the syntax of the select statement for an inner join.
In the from clause,
we identify the borrower table as B,
and the loan table as L. For this join,
we select borrower ID, last name,
and country from the borrower table,
and borrower ID, and the loan date from the loan table-
on the condition that the borrower ID in
the borrower table is equal to the borrower ID in the loan table.
Notice that in this join
each column name is prefixed with either the letter B or L. In sequel,
this prefect is referred to as an alias.
Using an alias is much easier than rewriting the whole table name.
And here is the result set.
The result set shows the rows from both tables that have the same borrower ID.
So far, we have seen an example of combining two tables.
But what if you need to combine data from three or more different tables?
You simply add new joins to the sequel statement.
For example, we want to know which borrowers have a book on loan,
but we also want to know which copy of the book they have.
This is how the three tables relate to each other.
In this case, we join the tables two by two.
First we join the information from the borrower table and
the loan table where the borrower IDs match.
Then, we join the information from
the loan table and the copy table with a copy IDs match.
We select the last name from the borrower table,
the copy ID from the loan table,
and the status from the copy table.
And here is the result set.
We see the name of the borrower,
the ID of each book,
and the status they have.
There are five books on loan.
If you wanted to add more tables,
you simply add new joins to the sequel statement.
Now you can explain the sequel syntax to join
two or more tables and interpret the result set.

[^^^](#SQL_AND_RDB)

---

####

[^^^](#SQL_AND_RDB)

---

####

[^^^](#SQL_AND_RDB)

---

####

[^^^](#SQL_AND_RDB)

---
