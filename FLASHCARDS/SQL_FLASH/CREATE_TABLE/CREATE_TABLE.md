
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md) - [SQL_FLASH](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SQL_FLASH.md) - CREATE TABLE

---

The ```CREATE TABLE``` statement is used to create a new table in a database.

```sql
CREATE TABLE trk (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
```

##### CREATE TABLE USING ANOTHER TABLE

```sql
create table trk_test_xx as select * from trk_test_01;
```

---
