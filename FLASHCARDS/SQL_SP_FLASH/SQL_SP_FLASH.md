
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/blob/master/FLASHCARDS/FLASHCARDS.md)

---

### SQL_SP_FLASH

---

```
A stored procedure is a precompiled SQL code that can be saved and reused.

If you have an SQL query that you write over and over again,
save it as a stored procedure, and then just call it to execute it.

A stored procedure can also have parameters,
so it can act based on the parameter value(s) that is passed.
```

---

```
Code Reusability - The same procedure can be called from various applications
Improved Performance - Stored procedures are precompiled and runs faster
Database Security - You can set users permission to run a specific procedure (limits direct access to tables)
Easy Maintenance - When updating a procedure, it automatically updates all its use
```

---

##### HOW_TO_START_SP

```sql
EXEC [SCH].[sp_CCC_ALL]
EXEC [SCH].[sp_CCC_ALL] @Id = 1; --start with param
```

---

##### HOW_TO_CREATE_A_SP

```sql
USE [DB_NAME]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
                   
CREATE PROCEDURE [SCH].[sp_CCC_ALL]
    @Id INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT * 
    FROM YourTable
    WHERE Id = @Id;
END
GO                              
```

---

##### HOW_TO_MODIFY_A_SP

```sql
ALTER PROCEDURE [SCH].[sp_CCC_ALL]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT * FROM YourTable;
END
GO
```

---
