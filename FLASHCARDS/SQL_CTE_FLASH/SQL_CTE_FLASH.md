
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md) 

---

#### SQL_CTE_FLASH

---

```sql
WITH department_employees AS (
    SELECT employee_id, first_name, last_name, department
    FROM employees
    WHERE department = 'Sales'
)
SELECT *
FROM department_employees;

--cte
WITH CTE_NAME (column_name) AS (query)
SELECT * FROM CTE_NAME;

--cte1 (common table expression)
WITH
   CTE_NAME1 (column_name) AS (query),
   CTE_NAME2 (column_name) AS (query)
SELECT * FROM CTE_NAME1
UNION ALL
SELECT * FROM CTE_NAME2;

--cte2
WITH recursive_cust (ID, NAME, ADDRESS, AGE) AS (
   SELECT ID, NAME, ADDRESS, AGE
   FROM CUSTOMERS
   WHERE SALARY > 3000
   UNION ALL
   SELECT ID, NAME, ADDRESS, AGE
   FROM CUSTOMERS
   WHERE AGE > 25
)
SELECT * FROM recursive_cust;
```
