
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [SQL_EXPLORER](https://github.com/ttltrk/TTT/blob/master/SQL/SQL_EXPLORER/SQL_EXPLORER.md)

---

### 08_LITERAL_CHAR_STRING

---

```
SELECT last_name || ' is a ' || job_id AS "Employee Dteails"
FROM EMployees;
```

Our next area that we want to investigate will be on literal character strings. This section also dovetails nicely from the alias and concatenation operator section here that we just investigated. The objective on this one is to describe literal character strings.

So literal character string here is, it's a character, a number, or a date that is included inside of your SELECT statement. If we do include it here, please understand here that date and character literal values here must be enclosed within single quotation marks. And you saw that a little bit in the demonstration I did in the last section. And we'll retouch that here in another demo.

Also, each character string is going to be outputted once for each row that's returned by the SELECT statement. So it then in turn returns it. So if you get 10 rows, you get that literal string here return for the value that would be coming back here from your SELECT statement. Looking at it and using literal in Oracle in a SELECT statement, you'll see that in this one we've selected last name. There is our concatenation operator.

And then here is our literal string. It's a character string, so we know that it needs to be enclosed here in single quotes. And that is-- the literal, of course, is 'is a.'

But do note here, and I would like to point out, maybe just kind of highlight, that there is a space right here, there is a space right here, and there is a space right here that's incorporated. And of course, it gets echoed in the output. There's that space, there is that space, and there's that space-- again, very nicely here seen. And nice to see that we've gone back here too and understand here that we've got those-- that consideration here when we concatenate and then also include a literal string.

And of course, our output gives us the concatenation and the literal string in its result set. Also, do note here we've added here the alias employee details. And there is our literal, again, a character string. Or if it was a date value, of course, it would need to be in turn enclosed in single quotes.

---
