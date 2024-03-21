
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [SQL_EXPLORER](https://github.com/ttltrk/TTT/blob/master/SQL/SQL_EXPLORER/SQL_EXPLORER.md)

---

### 05_WRITING_SQL

---

```
SELECT - identifies the COLUMNS to be displayed
FROM - identifies the TABLE containing those columns
```

```
SELECT *
FROM departments;

SELECT depatment_id, location_id
FROM departments;
```

```
dual - is a table automatically created by Oracle Database
     - has one column called DUMMY of data type VARCHAR(1), and contains one row a value x
```

Well, in our path here to complete our Oracle Database Explorer badge, we can now begin to investigate here what it takes to write SQL statements. And the objective on this one is we want to describe our SQL statements. And, of course, then, in turn, at the end of this, we'll show you a nice demo of writing some SQL statements.

So, in working with SQL, what are the things we need to understand here? And these are some of the recommendations. One, first and foremost, what we need to understand is SQL statements are not case sensitive. Provide cohesion and standardization, we would certainly recommend that you use some formatting here, but understand here, if you want to do it all uppercase, wonderful. If you want to do it lowercase, wonderful, the statements are not case sensitive.

Likewise, your statements can be entered on one line or more. And, again, I'm of the persuasion here to follow convention, typically, as we're going to see a little bit later here, separate lines here for separate clauses. Also, SQL keywords cannot be abbreviated or split across lines. A keyword is going to be something along the lines of SELECT. So CREATE, DELETE, these are all keywords here within SQL that cannot be abbreviated.

As I mentioned before here, clauses are usually placed on separate lines. And this just lends itself here to good readability. And I'm going to say here it's much easier to work with.

And, last but not least here, if there is need for indentation here, I would certainly use it to make your code much easier to read. So, especially in the case, we won't investigate it much in this learning path, but, if you use a subquery here, you want to indent the subquery. That way, it stands away from or stands out from the main query and so on.

So let's look at the basic SELECT statement. The basic SELECT statement, as we work with it, the SELECT, which is the keyword, identifies here the columns that you want to be displayed in your reported output or your results output. FROM, of course, identifies the table or tables containing those columns that you want to be displayed.

And then, looking at the syntax here, specifically, you'll note here there is the SELECT. The asterisk here on this one here is a shorthand for saying, in essence, I want to list all columns in the table structure for display. You can then, in turn, also, we will investigate the DISTINCT keyword here. It suppresses duplicates. We'll investigate it a little bit later in our path.

Then you can list your column. We will also then, in turn, understand that you can alias your column. And we'll show you that also in a subsequent lesson that is coming. You'll note the comma after this one here. And, of course, then you list an additional column or columns afterwards.

The next keyword on this one, of course, is the FROM and then, of course, the table. The last thing you have to worry about, of course, is that you need to terminate your statement. And that's with the semicolon. Now, when we get into our demos, I'll illustrate that here a little bit further here, as far as that semicolon, but, for now, let's just leave it at that.

If I wanted to select all columns from my database table, my syntax would look like this. In SQL Developer, you'd enter in, into your SQL worksheet, SELECT and, again, we want all columns. So we're going to use a shorthand of the asterisk. And, of course, FROM, where do we want-- where is the information that I want? Here it's in the Departments table.

In executing that statement mainly, it will then, in turn, come back and deliver this type of result. Now there's no problems. If I want to then, in turn, not using shorthand here, I could then, in turn, have done this. I could SELECT DEPARTMENT_ID comma DEPARTMENT_NAME comma MANAGER_ID comma and LOCATION_ID from departments here. And that would have yielded the same results. I'll do that in a demonstration at the end of this.

Listing specific columns here, here's your syntax. Again, in SQL Developer, you'll see that we'll SELECT DEPARTMENT_NAME, LOCATION_ID FROM departments. And then that statement, of course, is going to generate here or yield me the results of a listing of the DEPARTMENT_ID and the LOCATION_ID from the departments table. That's pretty straightforward here, and it's really kind of nice.

One final thing that we want to kind of discuss here, selecting from dual with an Oracle database, the dual table, of course, is automatically created here within the Oracle database. And it's owned by sys. So it's in the sys schema, but we can access it here via a public synonym, which is the name dual.

Now dual, in its structure of itself here, has only one column called the DUMMY column, right? And it has a data type of VARCHAR(1). And it does contain value within it, and that's it has the one row here of a value of x within it. So, if I generated here a listing of all columns right here from the dual table and all rows here-- I use SELECT asterisk right here from dual-- and this is all I get back.

Now what's cool about dual here is that I can then, in turn, use it here to compute some expressions right here within SQL such as, in this case here, we're illustrating using a function, a built-in function here, SYSDATE, selecting that from dual. And, what SYSDATE does, it gives me here the current date right here out of the database. Again, in the demonstration here, I'll show you that you can use an arithmetic operation within it to also-- I'm sorry, expression within your SELECT statement against dual here, and it will perform that calculation for me.

---
