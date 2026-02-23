
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md) 

---

### SQL_ADV_FLASH

---

* [REPLICATE_TIMESTAMPS](#REPLICATE_TIMESTAMPS)
* [CREATE_MAPPING_TABLE](#CREATE_MAPPING_TABLE)
* [CHECK_DUPLICATES](#CHECK_DUPLICATES)

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

#### CHECK_DUPLICATES

```sql
select cdate, count(*)
from  ms.dim_calendar cal 
group by cdate
having count(*) > 1 ---change for channel DM - in past 2  

select country, count(*)
from ms.dim_country ctry 
group by country
having count(*) > 1

select special_bid_number, count(*)
from sch.fact_ms_contracts_par_imp  
group by special_bid_number
having count(*) > 1
```

```sql
with original as (
select count(*)a, [sales doc number] from sch.[vw_xxx_UNION]
where [shipping date]>='2023-04-01'
group by [sales doc number]
),neww as (
 
 
select count(*)b, [sales doc number] from sch.[vw_xxx_UNION_abc]
 
group by [sales doc number])
 
select * from original full outer join neww on original.[sales doc number]= neww.[sales doc number]
where coalesce(a,0)<>coalesce(b,0)
```

[^^^](#SQL_ADV_FLASH)

---
    
