
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md) - SQL_ADV_FLASH

---

```sql
-- create and update mapping table
CREATE TABLE sch.del_ordno_map (
    ORDNO nvarchar(512))

select * from sch.del_ordno_map

INSERT INTO sch.del_ordno_map (ORDNO)
VALUES 
('4313280566')
--,('6700018677')
--,('6700018678')

-- delete script

DELETE v
FROM sch.main_tab_test_20260223 v
INNER JOIN sch.del_ordno_map m
    ON v.SO_NUMBER = m.ORDNO;
```

---

    
