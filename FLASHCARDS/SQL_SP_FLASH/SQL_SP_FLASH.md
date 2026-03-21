
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/blob/master/FLASHCARDS/FLASHCARDS.md)

---

### SQL_SP_FLASH

---

##### HOW_TO_START_SP

```sql
EXEC SCH.sp_CCC_xxx  
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
                       
AS                      
BEGIN                      
                
SET NOCOUNT ON;

select * from ...

END
GO                                
```

---
