
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md) - SQL_ADV_FLASH

---

* [REPLICATE_TIMESTAMPS](#REPLICATE_TIMESTAMPS)
* [CREATE_MAPPING_TABLE](#CREATE_MAPPING_TABLE)

---

##### REPLICATE_TIMESTAMPS

```sql
select top 100 * from sch.main_tab order by TIMESTAMP desc

-- replicate data from friday 2025-04-11 to Saturday 2025-04-12, Sunday 2025-04-13, Monday 2025-04-14

INSERT INTO sch.main_tab (
    PRODUCT_ID,
    CUSTOMER_ID,
    BM,
    QUANTITY_INV, 
    QUANTITY_AGED60,
    QUANTITY_BACKLOG,
    QUANTITY_TRANZIT,
    TIMESTAMP,
    AVAIL_QTY,
    ORD_QTY
)
SELECT 
    PRODUCT_ID,
    CUSTOMER_ID,
    BM,
    QUANTITY_INV, 
    QUANTITY_AGED60,
    QUANTITY_BACKLOG,
    QUANTITY_TRANZIT,
    --'2025-04-12' as TIMESTAMP,
	--'2025-04-13' as TIMESTAMP,
	'2025-04-14' as TIMESTAMP,
    AVAIL_QTY,
    ORD_QTY
FROM sch.main_tab
WHERE TIMESTAMP = '2025-04-11'
```

[^^^](#SQL_ADV_FLASH)

---

---

##### CREATE_MAPPING_TABLE

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

-- delete part (if it is needed)

DELETE v
FROM sch.main_tab_test_20260223 v
INNER JOIN sch.del_ordno_map m
    ON v.SO_NUMBER = m.ORDNO;

-- update part (if it is needed)

UPDATE sch.main_tab_test_20260223
SET CONTRACT_NUMBER = 'ZJKQP5VS'
WHERE [INVOICE NUMBER] IN ('6700018676','6700018677','6700018678');

-- request after (using a mapping table)

UPDATE sch.main_tab_test_20260223
SET SPECIAL_BID_NO = 'ZJKQP5VS' 
FROM sch.main_tab_test_20260223 data  
INNER JOIN sch.del_ordno_map map ON data.[INVOICE NUMBER] = map.[INVOICE NUMBER]
```

[^^^](#SQL_ADV_FLASH)

---

    
