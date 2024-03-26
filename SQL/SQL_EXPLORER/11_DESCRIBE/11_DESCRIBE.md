
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [SQL_EXPLORER](https://github.com/ttltrk/TTT/blob/master/SQL/SQL_EXPLORER/SQL_EXPLORER.md)

---

### 11_DESCRIBE

---

```
Displaying table structure by using the DESCRIBE command.
Use the DECRIBE command to display the structure of a table. 
```

```sql
DESCRIBE employees
```

Our next area we're going to investigate is the DESCRIBE command. And do note here that we say DESCRIBE command here. This is not a keyword here. This is actually a command here, and it's actually a SQL*PLUS command that is also interpreted here, or is understood by, the SQL Developer utility or tool as well.

In working with the DESCRIBE command here, we want to certainly, of course, explain it to you. And it truly is important to note here that this is a command here that you can use within SQL statements, but it is part of the SQL*PLUS syntax, in that it is one of the few times here where you can actually abbreviate things. And I'll demonstrate this for you.

What the DESCRIBE command here does for us is to display table structure here by using that command. And again, I want to stress that in working with this, the syntax on this one is simply DESCRIBE, and then, of course, what do you want to, in this case, describe? In our case, of course, we're wanting to describe here or display table structure.

So we enter in the syntax. If we describe employees here, it's going to return for us this information. Now, the output that you see on the screen here is output that you would realize here from SQL*PLUS. And when I get to the demonstration for this one here, I'm going to show you both ways, because we do illustrate both ways, not only using the command line tool of SQL*PLUS, which is what this output shows, but we also want to show you the DESCRIBE command using, of course, SQL Developer.

Now, again, as I stated before, the DESCRIBE command here is a SQL*PLUS command that can be interpreted here in the SQL worksheet and describe the structure for us. But we can also describe our table structure in SQL Developer by simply selecting, then, or highlighting the table in question from your navigational menu here. And the table structure, of course, will show up here accordingly, here, on the correct tab here in the SQL worksheet or workspace.

And of course, the alternative way of doing it here is exactly that-- here, selecting the table in the navigational string-- or they call it the Connections Tree-- and use the column tab here in the worksheet structure to, then, in turn, see the table structure. Now, I'm going to be the first one to tell you here that you get quite a bit more information in SQL Developer using the DESCRIBE capability of SQL Developer, than you do-- and we'll go back here one slide-- than you do by using, of course, the DESCRIBE command in SQL*PLUS.

But very similar. We get the name of the column we get to see whether the constraint on it here will accept null values or not, which means the NOT NULL says you must collect a value to insert a row of information in this table. And it also, then, in turn, illustrates your data type and, of course, the sizing constraint here of that data type.

Once again, in SQL Developer, you get similar here. And as we work back through it here, you see that. Of course, your columns with, again, column name. Whether it's nullable or not here-- so it's no or yes. No, it is not nullable, yes, you can have null values in it, and so forth.

So again, similar. What you don't get in the command line prompt within SQL*PLUS is comments. If there are comments placed on the table structure, then it will show up here in SQL Developer.

---
