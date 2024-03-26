
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [SQL_EXPLORER](https://github.com/ttltrk/TTT/blob/master/SQL/SQL_EXPLORER/SQL_EXPLORER.md)

---

### 10_DISTINCT

---

```sql
SELECT DISTINCT department_id
FROM employees;
```

Well, this next area in our explorer path is going to be on the DISTINCT keyword. When working with this one, we're going to describe the DISTINCT keyword here and how it's utilized inside of our SELECT statements or our SQL statements.

The default display of queries is going to be all rows here, including duplicate values, whether we like it or not. And a good example of this is we select department ID from employees, in this illustration, we show you here that there are numerous department 90s that are represented, numerous departments 60s, and so forth.

To suppress this or to eliminate these duplicate roles here, you can see that we could use the keyword DISTINCT in our SQL statement and that will then, in turn, omit or eliminate the duplication. So the keyword, of course, is SELECT, and it follows immediately before our column heading.

So in this one, SELECT DISTINCT department ID FROM employees. and you'll note here now, we no longer see duplicate values. We're only seeing them the unique first occurrence of that department ID. That's nice here. Also be advised, and then we'll show you in the demonstration, that you can also then, in turn, have additional columns in your SELECT statement clause here. It will give you unique occurrences for each of those columns.

---
