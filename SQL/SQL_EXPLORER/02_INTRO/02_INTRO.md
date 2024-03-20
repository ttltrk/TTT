
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [SQL_EXPLORER](https://github.com/ttltrk/TTT/blob/master/SQL/SQL_EXPLORER/SQL_EXPLORER.md)

---

### 02_INTRO

---

Well, welcome to our first topic or, here a, discussion in our getting started with SQL. This one is titled, of course, Introduction to SQL. And, first, of course, our objectives on this is going to be, well, how does SQL work.

Secondly, of course, here what are the various statement types that we can see within SQL? And, finally, what we want to cover, of course, is Oracle's SQL Development environments that are available to utilize and the interaction of our data with our systems.

Well, how does SQL work? Well, first thing we need to understand is that SQL is a data sublanguage. Its primary purpose is to provide an interface here to a relational database, such as the Oracle database. And, of course, all of the SQL statements are, in essence, instructions here to the database, either to, of course, retrieve here or insert or create, update or modify, and remove or delete, here, information or data from your system.

It then, in turn, also, understand, works with the data at the logical level. And it processes sets of data as groups, rather than as individual units. And what's nice about it, of course, it provides automatic navigation here to the data.

It then, of course, uses the statements here that can be complex or relatively simple. And, of course, they are powerfully individual in the fact that they stand alone, and they don't accumulate. So, if you are querying, I mean, in essence, that's exactly what you will be doing. You'll just be querying or extracting information from the database.

If you're adding new data into it, you're going to be inserting. They aren't combined here in any way, except in some certain syntax, but, for the most part, we need to understand, they're standalone, as we mentioned earlier also, that they can be used here really on any ANSI-compliant relational database.

The next area, of course, that we look at is what exactly are the statement types that we can see within SQL. And the first one would be, of course, then a data manipulation or a DML. That includes, of course, here the concepts or the clauses of selecting, inserting, updating, deleting, and also then, in turn, merging. And these all effect, of course, here rows or can affect rows here, our information within a table.

The second area, of course, is what we would define as DDL or a Data Definition Language. And then this one is where we actually create, possibly replace, or alter here and, in turn, drop, or I guess we'll call it thin out here or remove information, but keep structure and add comments here to our objects within our database.

The third area, of course, is data control language. And this is where we then, in turn, grant here permissions or access control here to the database and, of course, to the objects within the database, either by granting and/or, of course, then removing or revoking.

And then a final area here, which really is in concert here with the data manipulation language, it's Transaction Control Language or TCL. And, of course, TCL here and its commands right here are its primary purpose is to guarantee, of course, database integrity and consistency. All in all here, of course, these, I guess-- I won't call them subcategories, but these groupings are the statement types here that you can see within SQL.

Of course, the next area we should understand here is what tools or utilities are available for me to use, as far as developmental processes are concerned here within the Oracle database. Well, the first one that we will see, of course-- and this is the one we're going to investigate primarily in this topic or this lesson-- is Oracle's SQL Developer.

And it's a graphical tool here that allows you to, of course, browse. You can create. You can delete. You can edit. You can debug a PL/SQL code.

You can run statements and scripts that are SQL. You can manipulate and export data. You can create and view reports and so forth. And, of course, you can connect to, in essence, with SQL Developer any Oracle database schema using standard database authentication.

The next tool or utility that you can use, of course, is SQL*Plus. And this is, in essence, a command line tool or a terminal window tool here. It's an interactive and batch query tool that's installed, thankfully, here with every Oracle database server or client installation. And, even though we say it's a terminal interface here or a command line interface, it also has a web-based interface that you can use that's known as or called iSQL*Plus.

Another tool that you can utilize here for interpreting SQL or working with SQL, of course, is Oracle's JDeveloper. This is a multi-platform integrated development environment utility or tool that gives us complete lifecycle development here for Java, Java web services, and, of course, also SQL.

It provides a graphical tuning interface here or a graphical interface here for tuning and executing SQL statements. And, certainly, of course, it can also give me here a visual schema diagrammer and/or a data modeler, if you prefer, working with SQL. And it supports, of course, then editing, compiling, and debugging PL/SQL code as well.

The final tool or utility that you could incorporate here or utilize, of course, is Oracle's Application Express. Now this is a hosted environment here for developing and deploying database-related web applications. And, as far as SQL is concerned, the SQL Workshop is a component of Oracle Application Express that allows me to view and, of course, manage database objects from a web browser, very similar to what iSQL*Plus does as well.

The SQL Workshop within Application Express here or Oracle's Application Express offers quick and easy access here to SQL command-- SQL commands in the command processor. So you can then, in turn, interact here with, again, your database.

And that leads us here to where we'll be performing a demo at this time here in which we're going to demonstrate here how to launch Oracle's SQL Developer. And, of course, once we have that launched here, we'll explore here briefly some of its interface.

---
