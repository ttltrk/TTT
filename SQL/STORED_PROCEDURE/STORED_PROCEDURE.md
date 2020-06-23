
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### STORED_PROCEDURE

---

```
A stored procedure is a prepared SQL code that you can save, so the code can be reused over and over again.
So if you have an SQL query that you write over and over again, save it as a stored procedure, and then just call it to execute it.
You can also pass parameters to a stored procedure, so that the stored procedure can act based on the parameter value(s) that is passed.
```

---

* [BASICS](#BASICS)
* [STORED_PROCEDURE_VS_FUNCTION](#STORED_PROCEDURE_VS_FUNCTION)

---

#### BASICS

```SQL
CREATE PROCEDURE procedure_name
AS
sql_statement
GO;

EXEC procedure_name;
```

```sql
DO $$
<<first_block>>
DECLARE
  counter integer := 0;
BEGIN
   counter := counter + 1;
   RAISE NOTICE 'The current value of counter is %', counter;
END first_block $$;
```

[^^^](#STORED_PROCEDURE)

---

#### STORED_PROCEDURE_VS_FUNCTION

```
SP
- It may or may not return a value
- we call a procedure using EXEC/EXECUTE command
- it can have both input and output parameters
- procedure can not be called from function
- procedure allows SELECT as well as DML
- we can create a procedure with and without a parameter 

FUNC
- it must return a value
- we call a function by using select command only
- function can have only input parameters
- function can be called from procedure
- function allows only SELECT statement in it
- we can create a function with parameter only
```

```sql

>>>

>>>
```

[^^^](#STORED_PROCEDURE)

---
