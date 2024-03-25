
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [SQL_EXPLORER](https://github.com/ttltrk/TTT/blob/master/SQL/SQL_EXPLORER/SQL_EXPLORER.md)

---

### 07_ALIASES_CONCAT_OP

---

```
SELECT last_name AS name, comission_pct comm
FROM employees;
```

```
SELECT last_name || job_id AS "Employee"
FROM employees;
```

Our next area of discovery is going to be, and dovetails nicely against the arithmetic expressions, is column aliases and concatenation operator. In this one, you're going to see that we're going to investigate column aliases and then the concatenation operator.

Well, to define a column alias, the reason why we use it is it allows us to rename the column headings, either for clarity here or just to add a little bit more distinction. But most importantly, it's very useful in calculations. A column alias, of course, is going to immediately follow the column name. And you can also, for clarity, and the optional keyword AS, or A-S, between the column name and its alias.

Now, if you want it to, I guess, not follow, because it will always, then, in turn, be displayed in uppercase, if you want it to contain either spaces or special characters, then double quotes around the alias would then, in turn, give it its case sensitivity or allow the blank space or the white space in between, say, two names.

Let's look at some examples of column aliasing. On this one, you'll see that we have our SELECT statement. Of course, it's select last name. There's that keyword, A-S, or as, and the name. And then commission_pct, and then comm, FROM employees.

We're going to highlight this and show you that, in this situation here, the name and comm are the aliases that were created here for this output statement. Likewise, again, if we wanted to see it here in representation here for output to where it doesn't come back here echoing all uppercase for the column heading, in that maybe the first character is upper case and the rest of lowercase, or we have the space in between annual and salary.

To do that, again, you'll note, and let me see if I can highlight it once more. We're adding, of course, then, these double quotes. There's a couple of them here. I'll just kind of cover all of these. And see the output on this one is then, in turn, you'll note your name. And, of course, note here, now, it's mixed case. And then there's also annual salary. Note the space between and, of course, the initial caps for the word annual and salary.

The concatenation operator now, you'll note on this one, what this does is it allows us to link columns or character strings to other columns. So, in essence, if done properly, you can actually spell out possibly a sentence or add clarity here to the description of two column values.

To utilize this one, it's represented here by two vertical bars, or pipes, as they may be referred to. And, of course, it creates a resultant column here. Or let me rephrase that. It creates a resulted column value that is a character representation or a character expression.

And then looking at this one again, and I want to highlight, there is the concatenation operator, the two pipes. What it's doing is it's concatenating here last name and job ID here for output as a single, in this one, of course, a single character string, AbelSA_REP. Do note here, again, we have our alias right here, and we want it to be case sensitive, right? So, of course, we single quoted it.

---
