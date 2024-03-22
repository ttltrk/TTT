
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [SQL_EXPLORER](https://github.com/ttltrk/TTT/blob/master/SQL/SQL_EXPLORER/SQL_EXPLORER.md)

---

### 06_ARITHMETIC_SQL_STATEMENT

---

```sql 
SELECT last_name, salary, salary+300
FROM employees;
```


Well, we continue in our Database Developer Explorer path, looking at more information here on arithmetic expressions. The Objectives list that we want to describe and further clarify arithmetic expressions here in SQL statements. Well, as we mentioned before here, you can create expressions here with numbers and data by using arithmetic operators within a SQL statement. And the operators available to us are, of course, your standard addition, subtraction, multiplication, and division.

So a quick example of looking and seeing arithmetic operators here in use. If we select last name, salary, and salary plus 300 from employees and execute that statement, the results that come back are listed, and it performs the calculation for us. So looking at the very first example here, we have King here, who makes a salary of 24,000. And if we added 300 to it, we see that then, that total would be 24,300. Likewise for the 300 that we're adding here to the additional lines.

Understand here that operator precedence here does occur, and within it here, operator precedence here, it reads it from left to right here. And in doing so here, the rules of precedence here are as such your multiplication and division will occur here before addition and subtraction. But if they're all on the same line here, we need to understand, we're going to read it here, and operators will have the same priority, because we're going to be evaluated from left to right. So precedence here can be overridden if we enclose, then, our arguments here within parentheses.

So let's look at an example. We see this one here, we're going to select last name and salary, and then, of course, then, there's 12 times salary plus 100. So you'll note here in operator precedents, you'll see that the 12 times salary is going to occur first, and then we add, then, 100 to it. And that may not necessarily be the case of what was wanting here to be done within the HR schema. What the intent was was to give everyone a $100 raise and then calculate the annual salary.

So to accomplish that, we would use parentheses. And now you'll note here, we still want to-- and again, order precedence still is reading from left to right, but because we enclose here salary plus 100 in parentheses, we will do that first, and then we will step back here and just perform the rest of the calculation or the arithmetic operation by doing 12 times, then, the result of the salary plus 100. And you'll see, then, the outcome of that here is illustrated down, and it's a considerably different than what we saw in the previous example-- 289,200, as opposed to going back a couple slides, and we see 28,881-- very much a considerable difference. I'm pretty sure that everybody would prefer the second result.

Now, when we do our arithmetic operations right here, our operators here within, our calculations within SQL, we need to understand here what null has within it, or what impact it has within it. Null has-- we need to define here within our database-- null is a value that is unavailable, unassigned, unknown, or inapplicable. In essence, the best way to describe it as simply null. And probably, if you want to think of it here emotionally here, you'd just shrug your shoulders and say, I don't know.

So null is not the same as zero or a blank space, and it carries significant repercussions here when we perform arithmetic operations. So looking at it here, if we select last name, job ID, salary, and commission percentage here from employees, we see that the results come back that for the first three lines here or so within, we see that those people do not earn commissions. So we're seeing that a null is being returned, because it's either unavailable, unknown, or unassigned. Those that aren't earning commission here, of course, then have a value or numeric value within it, as we see illustrated here with the point-- I'm sorry, the 0.2, the 0.3, and so forth.

If we then, in turn, use them, our account or a null value in an arithmetic expression, it's going to evaluate here that expression with null. So again, if we work on that here, and select last name and then 12 times salary times commission percentage, again, working through this one, you'll see that we can very easily, certainly, calculate here 12 times salary without any issues. But when we do time commission percentage, and if their commission percentage is null, we're going to then get null for the entire expression.

Which really looks good on the bottom line here in this case here, because we have the majority of our workers within the database here not earning a salary, because commission was null as well. Well, we know that's not the case here. So we could handle this one here-- at this point in time here, I guess that investigation here is going to be left here for another day. Just simply understand here that you need to address your null values.

---
