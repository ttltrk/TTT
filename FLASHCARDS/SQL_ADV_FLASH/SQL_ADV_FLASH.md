
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/blob/master/FLASHCARDS/FLASHCARDS.md) 

---

### SQL_ADV_FLASH

---

* [REPLICATE_TIMESTAMPS](#REPLICATE_TIMESTAMPS)
* [CREATE_MAPPING_TABLE](#CREATE_MAPPING_TABLE)
* [DUPLICATE_BASICS](#DUPLICATE_BASICS)
* [CHECK_DUPLICATES](#CHECK_DUPLICATES)
* [DEDUPLICATION](#DEDUPLICATION)

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

#### DUPLICATE_BASICS

Why no “ultimate solution” exists

Because every method answers a different question:

1. DISTINCT

“Remove duplicate rows”

✅ Removes duplicates
❌ May hide real differences
❌ Expensive / lossy

2. GROUP BY / MAX

“Collapse multiple rows into one”

✅ Ensures 1 row per key
❌ Arbitrary unless business logic exists
❌ Can corrupt meaning

3. ROW_NUMBER()

“Pick one row per group”

✅ Deterministic (if ORDER BY is meaningful)
❌ Still discards data
❌ Depends on your rule being correct

4. Fixing the data model

“Make duplicates impossible”

✅ Only truly “correct” solution
❌ Not always feasible (real-world data is messy)

✅ Step 1: Understand the relationship

Ask:

Is this join supposed to be 1:1, 1:N, or N:N?

If you don’t know → that’s the real problem.

Step 2: Validate assumptions

```sql
-- Right side uniqueness check
SELECT key, COUNT(*)
FROM table
GROUP BY key
HAVING COUNT(*) > 1
```

✅ Step 3: Decide intentionally
If duplicates are wrong → fix data or fail
If duplicates are expected → aggregate or rank
If duplicates are meaningful → keep them

✅ Step 4: Encode the rule explicitly

Examples:

“latest record” → ```ROW_NUMBER() ORDER BY updated_at DESC```
“primary flag” → ```WHERE is_primary = 1```
“sum values” → ```GROUP BY```

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

#### DEDUPLICATION

```sql
--find duplicates
select PN, count(*)
from sch.CAMP_C77
group by PN
having count(*) > 1  

--send it to the new table
INSERT INTO sch.CAMP_NEW_CLEAN (PN, Campaign)
SELECT PN, Campaign
FROM (
    SELECT 
        PN,
        Campaign,
        ROW_NUMBER() OVER (PARTITION BY PN ORDER BY (SELECT NULL)) AS rn
    FROM sch.CAMP_NEW
) AS t
WHERE rn = 1;
```

[^^^](#SQL_ADV_FLASH)

---
