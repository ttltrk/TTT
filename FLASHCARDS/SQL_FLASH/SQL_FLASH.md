
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md) - SQL_FLASH

---

| Rank | Statement | Description | Query |
|-------|--------|-----------|----------|
| 01 | SELECT | The SELECT statement is used to select data from a database. | SELECT CustomerName, City FROM Customers; |
| 02 | SELECT DISTINCT | The SELECT DISTINCT statement is used to return only distinct (different) values. | SELECT DISTINCT Country FROM Customers; |
| 03 | WHERE | The WHERE clause is used to filter records. It is used to extract only those records that fulfill a specified condition. | SELECT * FROM Customers WHERE Country='Mexico'; |
| 04 | ORDER BY | The ORDER BY keyword is used to sort the result-set in ascending or descending order. | SELECT * FROM Products ORDER BY Price DESC; |
| 05 | AND | The AND operator displays a record if all the conditions are TRUE. | SELECT * FROM Customers WHERE Country = 'Spain' AND CustomerName LIKE 'G%'; |
| 06 | OR | The OR operator displays a record if any of the conditions are TRUE. | SELECT * FROM Customers WHERE Country = 'Spain' OR CustomerName LIKE 'G%'; |
| 07 | NOT | The NOT operator is used in combination with other operators to give the opposite result, also called the negative result. eg: NOT IN, NOT LIKE, NOT BETWEEN | SELECT * FROM Customers WHERE NOT Country = 'Spain'; | 
| 08 | INSERT INTO | The INSERT INTO statement is used to insert new records in a table. It is also possible to only insert data in specific columns and multiple rows. | INSERT INTO Customers (CustomerName, City, Country) VALUES ('Cardinal', 'Stavanger', 'Norway'); |
| 09 | NULL VALUES | A field with a NULL value is a field with no value. If a field in a table is optional, it is possible to insert a new record or update a record without adding a value to this field. Then, the field will be saved with a NULL value. A NULL value is different from a zero value or a field that contains spaces. A field with a NULL value is one that has been left blank during record creation! | SELECT CustomerName, ContactName, Address FROM Customers WHERE Address IS NOT NULL; |
| 10 | UPDATE | The UPDATE statement is used to modify the existing records in a table. It is the WHERE clause that determines how many records will be updated. | UPDATE Customers SET ContactName = 'Alfred Schmidt', City= 'Frankfurt' WHERE CustomerID = 1; |
| 11 | DELETE | The DELETE statement is used to delete existing records in a table. It is possible to delete all rows in a table without deleting the table. This means that the table structure, attributes, and indexes will be intact | DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste'; |
| 12 | SELECT TOP | The SELECT TOP clause is used to specify the number of records to return. | SELECT TOP 3 * FROM Customers; |
| 13 | AGG FUNC | An aggregate function is a function that performs a calculation on a set of values, and returns a single value. MIN(), MAX(), COUNT(), SUM(), AVG() | | 
| 14 | MIN() | The MIN() function returns the smallest value of the selected column. | SELECT MIN(Price) FROM Products; |
| 15 | MAX() | The MAX() function returns the largest value of the selected column. | SELECT MAX(Price) FROM Products; |
| 16 | COUNT() | The COUNT() function returns the number of rows that matches a specified criterion. | SELECT COUNT(*) FROM Products; |
| 17 | SUM() | The SUM() function returns the total sum of a numeric column. | SELECT SUM(Quantity) FROM OrderDetails; |
| 18 | AVG() | The AVG() function returns the average value of a numeric column. |SELECT AVG(Price) FROM Products; |
| 19 | LIKE | The LIKE operator is used in a WHERE clause to search for a specified pattern in a column. | SELECT * FROM Customers WHERE CustomerName LIKE 'a%'; |
| 20 | WILDCARDS | | |
| 21 | IN | The IN operator allows you to specify multiple values in a WHERE clause. | SELECT * FROM Customers WHERE Country IN ('Germany', 'France', 'UK'); |
| 22 | BETWEEN | The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates. The BETWEEN operator is inclusive: begin and end values are included.  | SELECT * FROM Products WHERE Price NOT BETWEEN 10 AND 20; |
| 23 | ALIASES | SQL aliases are used to give a table, or a column in a table, a temporary name. | SELECT CustomerID ID FROM Customers; |
| 24 | INNER JOIN | The INNER JOIN keyword selects records that have matching values in both tables. | SELECT c.CustomerName, o.OrderID FROM Customers c INNER JOIN Orders o ON c.CustomerID = o.CustomerID |
| 25 | LEFT JOIN | The LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right table (table2).  | SELECT c.CustomerName, o.OrderID FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID |
| 26 | RIGHT JOIN | The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records from the left table (table1). | SELECT c.CustomerName, o.OrderID FROM Customers c RIGHT JOIN Orders o ON c.CustomerID = o.CustomerID |
| 27 | FULL JOIN | | |
| 28 | SELF JOIN | | |
| 29 | UNION | The UNION operator is used to combine the result-set of two or more SELECT statements. The UNION operator automatically removes duplicate rows from the result set. Every SELECT statement within UNION must have the same number of columns. The columns must also have similar data types. The columns in every SELECT statement must also be in the same order | SELECT City FROM Customers UNION SELECT City FROM Suppliers ORDER BY City;|
| 30 | UNION ALL | The UNION ALL operator is used to combine the result-set of two or more SELECT statements. The UNION ALL operator includes all rows from each statement, including any duplicates. | SELECT City FROM Customers UNION ALL SELECT City FROM Suppliers ORDER BY City; |
| 31 | GROUP BY | The GROUP BY statement groups rows that have the same values into summary rows, like "find the number of customers in each country". | SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country;|
| 32 | HAVING | The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions. The following SQL statement lists the number of customers in each country. Only include countries with more than 5 customers: | SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country HAVING COUNT(CustomerID) > 5; |
| 33 | EXISTS | | |
| 34 | ANY | | |
| 35 | ALL | | |
| 36 | SELECT INTO | The SELECT INTO statement copies data from one table into a new table. | SELECT * INTO CustomersBackup2017 FROM Customers; |
| 37 | INSERT INTO SELECT | | |
| 38 | CASE | The CASE expression goes through conditions and returns a value when the first condition is met (like an if-then-else statement). So, once a condition is true, it will stop reading and return the result. If no conditions are true, it returns the value in the ELSE clause. | CASE WHEN condition1 THEN result1 WHEN condition2 THEN result2 WHEN conditionN THEN resultN ELSE result END; |
| 39 | NULL FUNCTIONS | | |
| 40 | STORED PRROCEDURES | | |
| 41 | COMMENTS | | |
| 42 | OPERATORS | | |
| 43 | CREATE DB | | |
| 44 | DROP DB | | |
| 45 | BACKUP DB | | |
| 46 | CREATE TABLE | | |
| 47 | DROP TABLE | The DROP TABLE statement is used to drop an existing table in a database. | DROP TABLE Shippers; |
| 48 | ALTER TABLE | The ALTER TABLE statement is used to add, delete, or modify columns in an existing table. | ALTER TABLE Customers ADD Email varchar(255); |
| 49 | CONSTRAINTS | | |
| 50 | NOT NULL | | |
| 51 | UNIQUE | | |
| 52 | PRIMARY KEY | The PRIMARY KEY constraint is used to uniquely identify each record in a table. Primary keys must contain unique values, and cannot contain NULL values. | CREATE TABLE Persons (ID int NOT NULL, LastName varchar(255) NOT NULL, FirstName varchar(255), Age int, CONSTRAINT PK_Person PRIMARY KEY (ID,LastName)); |
| 53 | FOREIGN KEY | The FOREIGN KEY constraint is used to prevent actions that would destroy links between tables. A FOREIGN KEY is a field (or collection of fields) in one table, that refers to the PRIMARY KEY in another table. The table with the foreign key is called the child table, and the table with the primary key is called the referenced or parent table. | |
| 54 | CHECK | | |
| 55 | DEFAULT | | |
| 56 | INDEX | Indexes are used to retrieve data from the database more quickly than otherwise. The users cannot see the indexes, they are just used to speed up searches/queries. | CREATE INDEX idx_lastname ON Persons (LastName); |
| 57 | AUTO INCREMENT | Auto-increment allows a unique number to be generated automatically when a new record is inserted into a table. Often this is the primary key field that we would like to be created automatically every time a new record is inserted. | CREATE TABLE Persons (Personid int NOT NULL AUTO_INCREMENT, LastName varchar(255) NOT NULL, FirstName varchar(255), Age int, PRIMARY KEY (Personid)); |
| 58 | DATES | | |
| 59 | VIEWS | In SQL, a view is a virtual table based on the result-set of an SQL statement. A view contains rows and columns, just like a real table. The fields in a view are fields from one or more real tables in the database. | CREATE VIEW [Brazil Customers] AS SELECT CustomerName, ContactName FROM Customers WHERE Country = 'Brazil'; |
| 60 | INJECTION | | |
| 61 | HOSTING | | |
| 62 | DATA TYPES | | |


---

* [WHAT_IS_SQL](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/WHATIS/WHATIS.md)
* [RDBMS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/RDBMS/RDBMS.md)


| shortenings | meanings | commands |
| ----------- | -------- | -------- |
| DDL | Data Definition Language | CREATE, ALTER, DROP, TRUNCATE, COMMENT, and RENAME |
| DML | Data Manipulation Language | INSERT UPDATE DELETE |


DDL – Data Definition Language

```sql

----------------------------------------------------------------

--CREATE DB
CREATE DATABASE testDB_01;

--SHOWS DB
SELECT datname FROM pg_database WHERE datistemplate = false;

--CREATE TABLE
CREATE TABLE trk (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

--CREATE TABLE USING ANOTHER TABLE
create table trk_test_xx as select * from trk_test_01;

--SHOW TABLES
SELECT *
FROM pg_catalog.pg_tables
WHERE schemaname != 'pg_catalog' AND
    schemaname != 'information_schema';

--CREATE INDEX
CREATE INDEX idx_lastname
ON Persons (LastName);

--CREATE INDEX (COMBINATION OF COLUMNS)
CREATE INDEX idx_pname
ON Persons (LastName, FirstName);      

--SHOW INDEXES
select indexname, indexdef
from pg_indexes
where tablename = 'trk_test_01';

--CREATE VIEW
--In SQL, a view is a virtual table based on the result-set of an SQL statement.
CREATE VIEW [Brazil Customers] AS
SELECT CustomerName, ContactName
FROM Customers
WHERE Country = 'Brazil';

--SHOW VIEW
select table_name from INFORMATION_SCHEMA.views;

----------------------------------------------------------------

--ADD COLUMN
ALTER TABLE trk_test_02
ADD city varchar(255);

--DROP COLUMN
ALTER TABLE Customers
DROP COLUMN Email;

--RENAME COLUMN
ALTER TABLE trk_test_02
RENAME COLUMN department TO dep;

--RENAME TABLE
ALTER TABLE trk_test
RENAME TO trk_test_01;

--MODIFY COLUMN
ALTER TABLE Persons
ALTER COLUMN DateOfBirth year;

----------------------------------------------------------------

--DROP DB
drop database testdb_02;

--DROP TABLE
--The DROP TABLE statement is used to drop an existing table in a database.
drop table trk_test_xx;

--DROP INDEX
DROP INDEX index_name;

----------------------------------------------------------------

--TRUNCATE TABLE
--The TRUNCATE TABLE statement is used to delete the data inside a table, but not the table itself.
--The DELETE command is used to delete particular records from a table. The TRUNCATE command is used to delete the complete data from the table.
TRUNCATE table trk_test_xx;

----------------------------------------------------------------

--PRIMARY KEY
--The PRIMARY KEY constraint uniquely identifies each record in a table.
--Primary keys must contain UNIQUE values, and cannot contain NULL values.
--A table can have only ONE primary key
CREATE TABLE Persons (
    ID int NOT NULL PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);

----------------------------------------------------------------

--FOREIGN KEY
--The FOREIGN KEY constraint is used to prevent actions that would destroy links between tables.
--A FOREIGN KEY is a field (or collection of fields) in one table, that refers to the PRIMARY KEY in another table.
--The table with the foreign key is called the child table, and the table with the primary key is called the referenced or parent table.
CREATE TABLE Orders (
    OrderID int NOT NULL PRIMARY KEY,
    OrderNumber int NOT NULL,
    PersonID int FOREIGN KEY REFERENCES Persons(PersonID)
);

----------------------------------------------------------------

```

* [CREATE_DB](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/CREATE_DB/CREATE_DB.md)
* [SHOW_DBS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SHOW_DB/SHOW_DB.md)
* [CREATE_TABLE](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/CREATE_TABLE/CREATE_TABLE.md)
* [SHOW_TABLES](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SHOW_TABLE/SHOW_TABLE.md)
* [CREATE_INDEX](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/CREATE_INDEX/CREATE_INDEX.md)
* [SHOW_INDEXS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SHOW_INDEX/SHOW_INDEX.md)
* [CREATE_VIEW](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/CREATE_VIEW/CREATE_VIEW.md)

ALTER TABLE - [ALTER_ADD_COLUMN](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/ALTER_ADD_COLUMN/ALTER_ADD_COLUMN.md) - [ALTER_DROP_COLUMN](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/ALTER_DROP_COLUMN/ALTER_DROP_COLUMN.md) - [ALTER_RENAME_COLUMN](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/ALTER_RENAME_COLUMN/ALTER_RENAME_COLUMN.md) - [ALTER_MODIFY_DATATYPE](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/ALTER_MODIFY_DATATYPE/ALTER_MODIFY_DATATYPE.md)

* [DROP_DB](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/DROP_DB/DROP_DB.md)
* [DROP_TABLE](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/DROP_TABLE/DROP_TABLE.md)
* [DROP_INDEX](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/DROP_INDEX/DROP_INDEX.md)
* [TRUNCATE_TABLE](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/TRUNCATE_TABLE/TRUNCATE_TABLE.md)

---

DML – Data Manipulation Language

```sql

----------------------------------------------------------------

--INSERT INTO
--The INSERT INTO statement is used to insert new records in a table.
INSERT INTO public.trk_test_01 (personid, lastname, firstname, address, city)
VALUES(7, 'ray', 'brent', 'still', 'GER');

----------------------------------------------------------------

--UPDATE
--The UPDATE statement is used to modify the existing records in a table.
UPDATE public.trk_test_01
SET lastname='jockey', firstname='brent', address='still', city='GER'
WHERE personid=7;

----------------------------------------------------------------

--DELETE
--The DELETE statement is used to delete existing records in a table.
--The DELETE command is used to delete particular records from a table. The TRUNCATE command is used to delete the complete data from the table.
DELETE FROM trk_test_01 WHERE firstname ='bbbb';

----------------------------------------------------------------

```

* [INSERT_INTO](#INSERT_INTO)
* [UPDATE](#UPDATE)
* [DELETE](#DELETE)

---

DRL/DQL – Data Retrieval Language/Data Query Language

```sql

----------------------------------------------------------------

--SELECT
SELECT * FROM trk_test_01;

--SELECT DISTINCT
SELECT DISTINCT city FROM trk_test_02;

--SELECT TOP
--The SELECT TOP clause is used to specify the number of records to return.
--The SELECT TOP clause is useful on large tables with thousands of records
SELECT TOP 3 * FROM trk_test_01;

--LIMIT
--Select the first 3 records of the Customers table:
SELECT * FROM Customers LIMIT 3;

--WHERE
SELECT * FROM trk_test_01 WHERE lastname='kawhi';

--ORDER BY
SELECT * FROM trk_test_01 ORDER BY city ASC || DESC;

----------------------------------------------------------------

--IS NULL
--A field with a NULL value is one that has been left blank during record creation!
SELECT CustomerName, ContactName, Address FROM Customers WHERE Address IS NULL;

----------------------------------------------------------------

--AND
SELECT * FROM trk_test_02 WHERE city='BP' AND dep='DEVOPS';

--OR
SELECT * FROM trk_test_02 WHERE city='BP' OR city='BA';

--NOT
SELECT * FROM trk_test_02 WHERE NOT city='BP';

----------------------------------------------------------------

-- AGGREGATE FUNCTIONS
--An aggregate function is a function that performs a calculation on a set of values, and returns a single value.

--MIN
--returns the smallest value within the selected column
SELECT MIN(systemid) AS SmallestSysid FROM trk_test_02;

--MAX
--returns the largest value within the selected column
SELECT MAX(systemid) AS LargestSysid FROM trk_test_02;

--SUM
--returns the total sum of a numerical column
SELECT SUM(personid) as sum_of_personid FROM trk_test_01;

--AVG
--returns the average value of a numerical column
SELECT AVG(personid) FROM trk_test_01;
--higher than average
SELECT * FROM Products WHERE price > (SELECT AVG(price) FROM Products);

--COUNT
--returns the number of rows in a set
SELECT COUNT(city) FROM trk_test_02;
SELECT COUNT(DISTINCT city) FROM trk_test_02;

----------------------------------------------------------------

--BETWEEN
--The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.
--The BETWEEN operator is inclusive: begin and end values are included. 
SELECT * FROM trk_test_01 WHERE personid BETWEEN 2 AND 4;   
SELECT * FROM Products WHERE Price NOT BETWEEN 10 AND 20;
SELECT * FROM Products WHERE Price BETWEEN 10 AND 20 AND CategoryID IN (1,2,3);

--IN
--The IN operator allows you to specify multiple values in a WHERE clause.
SELECT city, address FROM trk_test_01 WHERE city IN ('GS', 'Dallas', 'toronto');
SELECT city, address FROM trk_test_01 WHERE city NOT IN ('GS', 'Dallas', 'toronto');
SELECT * FROM Customers WHERE CustomerID IN (SELECT CustomerID FROM Orders);
SELECT * FROM Customers WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);

--LIKE
--The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
SELECT lastname FROM trk_test_01 WHERE lastname LIKE '%i';

----------------------------------------------------------------

--WILDCARDS 
--A wildcard character is used to substitute one or more characters in a string.
--Wildcard characters are used with the LIKE operator. 
--The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

%  -- Represents zero or more characters
_  -- Represents a single character
[] -- Represents any single character within the brackets *
^  -- Represents any character not in the brackets *
-  -- Represents any single character within the specified range *
{} -- Represents any escaped character **

----------------------------------------------------------------

--ALIASES
--SQL aliases are used to give a table, or a column in a table, a temporary name.
--Aliases are often used to make column names more readable.
SELECT CustomerID AS ID FROM Customers;
SELECT CustomerID ID FROM Customers;
SELECT CustomerID AS ID, CustomerName AS Customer FROM Customers;

--CONCATENATE
--The following SQL statement creates an alias named "Address" that combine four columns (Address, PostalCode, City and Country)
SELECT CustomerName, Address + ', ' + PostalCode + ' ' + City + ', ' + Country AS Address FROM Customers;
SELECT CustomerName, (Address || ', ' || PostalCode || ' ' || City || ', ' || Country) AS Address FROM Customers;

SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM Customers AS c, Orders AS o
WHERE c.CustomerName='Around the Horn' AND c.CustomerID=o.CustomerID;

SELECT Orders.OrderID, Orders.OrderDate, Customers.CustomerName
FROM Customers, Orders
WHERE Customers.CustomerName='Around the Horn' AND Customers.CustomerID=Orders.CustomerID;

----------------------------------------------------------------

--JOIN
--A JOIN clause is used to combine rows from two or more tables, based on a related column between them.

--(INNER) JOIN: Returns records that have matching values in both tables
--LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
--RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
--FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table

----------------------------------------------------------------

--INNER JOIN
--The INNER JOIN keyword selects records that have matching values in both tables.
--JOIN and INNER JOIN will return the same result.
--INNER is the default join type for JOIN, so when you write JOIN the parser actually writes INNER JOIN.
SELECT trk_test_01.personid AS ID, trk_test_01.lastname, trk_test_02.dep, trk_test_02.city
FROM trk_test_01
INNER JOIN trk_test_02
ON trk_test_01.personid=trk_test_02.systemid;

----------------------------------------------------------------

--LEFT JOIN
--The LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right table (table2). 
--The result is 0 records from the right side, if there is no match.
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;

----------------------------------------------------------------

--RIGHT JOIN
--The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records from the left table (table1). 
--The result is 0 records from the left side, if there is no match.
SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees 
ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;

----------------------------------------------------------------

--FULL OUTER JOIN
--The FULL OUTER JOIN keyword returns all records when there is a match in left (table1) or right (table2) table records.
--FULL OUTER JOIN and FULL JOIN are the same.
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders 
ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;

----------------------------------------------------------------

--SELF JOIN
--A self join is a regular join, but the table is joined with itself.
SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City
ORDER BY A.City;

----------------------------------------------------------------

--UNION/UNION ALL
--The UNION operator selects only distinct values by default. To allow duplicate values, use UNION ALL:
--The UNION operator is used to combine the result-set of two or more SELECT statements.
--Every SELECT statement within UNION must have the same number of columns
--The columns must also have similar data types
--The columns in every SELECT statement must also be in the same order
select * from temp1
UNION
select * from temp2;

select * from temp1
UNION ALL
select * from temp2;

----------------------------------------------------------------

--GROUP BY
--The GROUP BY statement groups rows that have the same values into summary rows, like "find the number of customers in each country".
--The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.
select department, sum(salary) 
from employees 
where 1=1 
group by department 
limit 5;

----------------------------------------------------------------

--HAVING
--The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5;

----------------------------------------------------------------

--STORED PROCEDURES
--A stored procedure is a prepared SQL code that you can save, so the code can be reused over and over again.
CREATE PROCEDURE SelectAllCustomers
AS
SELECT * FROM Customers
GO;

----------------------------------------------------------------

--CAST() Function
--The CAST() function converts a value (of any type) into a specified datatype.

--Convert a value to an int datatype:
SELECT CAST(25.65 AS int);

--Convert a value to a varchar datatype:
SELECT CAST(25.65 AS varchar);

--Convert a value to a datetime datatype:
SELECT CAST('2017-08-25' AS datetime);

----------------------------------------------------------------

--AUTO-INCREMENT
CREATE TABLE reg (
    region_id SERIAL PRIMARY KEY,
    region VARCHAR(20),
    country VARCHAR(20)
);

INSERT INTO reg (region, country) VALUES ('Southwest', 'United States');
INSERT INTO reg (region, country) VALUES ('Northeast', 'United States');
INSERT INTO reg (region, country) VALUES ('Northwest', 'United States');
INSERT INTO reg (region, country) VALUES ('Central', 'Asia');
INSERT INTO reg (region, country) VALUES ('East Asia', 'Asia');
INSERT INTO reg (region, country) VALUES ('Quebec', 'Canada');
INSERT INTO reg (region, country) VALUES ('Nova Scotia', 'Canada');
INSERT INTO reg (region, country) VALUES ('Nova Scotia', 'Canada');

region_id|region     |country      |
---------+-----------+-------------+
        1|Southwest  |United States|
        2|Northeast  |United States|
        3|Northwest  |United States|
        4|Central    |Asia         |
        5|East Asia  |Asia         |
        6|Quebec     |Canada       |
        7|Nova Scotia|Canada       |
        8|Nova Scotia|Canada       |


----------------------------------------------------------------

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

----------------------------------------------------------------

--case when

CASE                  
    When mn.bg IN ('DCG', 'ISG') THEN 'ISG'
    Else 'IDG'
END as "Business Group"

case
    when mn.bg like '%SSG%' then 'SSG'
    else mn.bg
end as "Business Group",
case 
    when mn.bg like '%IDG%' then 'IDG'
    when mn.bg like '%ISG%' then 'ISG'
end as "IDG/ISG",

,case when nullif(isu_solution,'') is not null then 'yes' else 'no' end as ISU

----------------------------------------------------------------

----------------------------------------------------------------

----------------------------------------------------------------

----------------------------------------------------------------

```

* [SELECT](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SELECT/SELECT.md)
* [SELECT_FROM_SELECT](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SELECT_FROM_SELECT/SELECT_FROM_SELECT.md)
* [SELECT_DISTINCT](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SELECT_DISTINCT/SELECT_DISTINCT.md)
* [SELECT_DISTINCT_ONLY_EVENS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SELECT_DISTINCT_ONLY_EVENS/SELECT_DISTINCT_ONLY_EVENS.md)
* [SELECT_DISTINCT_ONLY_ODD_NUMS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SELECT_DISTINCT_ONLY_ODDS/SELECT_DISTINCT_ONLY_ODDS.md)
* [SELECT_DISTINCT_DIFFERENCE](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SELECT_DISTINCT_DIFFERENCE/SELECT_DISTINCT_DIFFERENCE.md)
* [](#)
* [](#)
* [COUNT](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/COUNT/COUNT.md)
* [AVG](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/AVG/AVG.md)
* [SUM](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/SUM/SUM.md)
* [MIN](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/MIN/MIN.md)
* [MAX](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/MAX/MAX.md)
* [](#)
* [](#)

* [INNER_JOIN](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/SQL_FLASH/INNER_JOIN/INNER_JOIN.md)

---
