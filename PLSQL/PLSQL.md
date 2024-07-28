
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md)

---

### PL/SQL

---

* [BLOCKS](#BLOCKS)
* [COMMENTS](#COMMENTS)
* [DDL_VS_DML](#DDL_VS_DML)
* [DECLARE_CLAUSE](#DECLARE_CLAUSE)
* [DECLARE_CLAUSE_OBJECTS](#DECLARE_CLAUSE_OBJECTS)
* []()
* []()
* []()
* []()

---

#### BLOCKS

```
DECLARE - Declares internal program objects, such as variables 
BEGIN - Marks the beginning of the program logic
Program Logic - This is the actual PL/SQL and SQL statements 
EXCEPTION - Marks the beginning of exception logic
END - Marks the end of the program logic
```

```
the semi-colon (;) does NOT terminate input
into the buffer. The period (.) does.

the RUN or / (slash) command compiles the 
block and executes

variable substitution (&) is supported
```

```
programs may write to the output buffer 
using the supplied DBMS_OUTPUT() command

You must issue the SET SERVEROUTPUT ON
command for each session
```

---

#### COMMENTS

```sql
-- This is a comment

/*
This is
a comment
too
*/

```

---

#### SYNTAX_RULES

- only one statement per line
- all execution statement must be terminated with a semi-colon (;)

```sql
BEGIN 
	FOR I IN 1..1000 LOOP
		INSERT INTO employee (ssn, name)
		VALUES (9000000000 + I, 'John Doe');
	END LOOP;
```

```sql
DECLARE 

BEGIN 

	-- Loop for 1000 times
	FOR I IN 1..1000 LOOP
		-- Indert data into the employee table
		INSERT INTO employee (ssn, name)
		VALUES (9000000000 + I, 'John Doe');
	END LOOP;
	-- Commit changes
	COMMIT;

EXCEPTION	

	-- If an error occurs, roll back the changes
	WHEN OTHERS THEN 
		ROLLBACK;

END;
/
```

```
the syntax for output uses the format
PackageName.ProcedureName(parameter)

to output custome text, you use the following command:
dbms_output.put_line('Message Text')
```

---

#### DDL_VS_DML

```
SQL DML - Data Manipulation Language
	- INSERT, DELETE and UPDATE
	- Used copiously within this course

SQL DDL - Data Definition Language
	- CREATE, ALTER and DROP
	- Statements cannot be used within PL/SQL, so are
	outside the scope of this course
```

---

#### DECLARE_CLAUSE

```
- DECLARE Clause Objects
- Available Data Types
- Declare SImple Types
- Declare Complex Types:
	- %TYPE
	- %ROWTYPE
	- TYPE...TABLE
	- TYPE...RECORD
	- User-Defined Types
```

---

#### DECLARE_CLAUSE_OBJECTS

```
The DECLARE Clause is used to define (declare) 
internal program objects, such as variables.

- Variable: An element internal to the program that can hold and modify values.
- Boolean: A simple type containing TRUE/FALSE/NULL
- Constant: Similar to a variable, but cannot be changed.
- Record: Complex object that matches the structure of a table
	within the database yet holds a single record.
```

---

####

---

####

---

####

---