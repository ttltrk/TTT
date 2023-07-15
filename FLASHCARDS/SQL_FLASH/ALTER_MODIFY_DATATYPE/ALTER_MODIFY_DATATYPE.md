
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md) - [SQL_FLASH](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SQL_FLASH.md) - ALTER MODIFY DATATYPE

---

The ```ALTER TABLE``` statement is used to add, delete, or modify columns in an existing table.

Now we want to change the data type of the column named ```DateOfBirth``` in the ```Persons``` table.

```sql
ALTER TABLE Persons
ALTER COLUMN DateOfBirth year;
```

---
