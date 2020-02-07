
/**
 * ctrl-f >> replace
 * ctr-a >> mark all
 * alt-x >> run all
 * ctr-enter >> run the marked query
 */

----------------------------------------------------------------------------------

/*
 * SELECT
 * SELECT DISTINCT
 * SELECT TOP
 * WHERE
 * AND, OR, NOT
 * ORDER BY
 * LIMIT
 * MIN, MAX
 * COUNT, AVG, SUM
 * BETWEEN
 * IN
 * LIKE
 * WILDCARDS
 * ALIAS
 *
 * INSERT INTO
 * NULL VALUES
 * UPDATE
 * DELETE
 * CREATE
 * ALTER
 * JOIN
 * UNION
 * GROUP BY
 * INDEX
 *
 *
 *
 * CASE
 *
 *
 */

----------------------------------------------------------------------------------

--SELECT

/*
 * The SELECT statement is used to select data from a database.
 * The data returned is stored in a result table, called the result-set.
 */

SELECT * FROM trk_test_01;
SELECT * FROM trk_test_02;
SELECT personid, lastname FROM trk_test_01;
SELECT lastname FROM (SELECT * FROM trk_test_01) AS lname; --select from select

----------------------------------------------------------------------------------

--SELECT DISTINCT

/*
 * The SELECT DISTINCT statement is used to return only distinct (different) values.
 * Inside a table, a column often contains many duplicate values;
 * and sometimes you only want to list the different (distinct) values.
 */

SELECT DISTINCT city FROM trk_test_02;
SELECT COUNT(DISTINCT city) FROM trk_test_02;
SELECT COUNT(city) FROM trk_test_02;

--only even numbers
SELECT DISTINCT personid FROM trk_test_01 WHERE Mod(personid,2)=0;

--only odd numbers
SELECT DISTINCT personid FROM trk_test_01 WHERE Mod(personid,2)=1;

--Write a query to find the difference between the total number of cities and the unique number of cities in the table STATION.
SELECT COUNT(city) - COUNT(DISTINCT city) FROM trk_test_02;

----------------------------------------------------------------------------------

--SELECT TOP

/*
 * The SELECT TOP clause is used to specify the number of records to return.
 *
 *
 */

SELECT TOP 3 * FROM trk_test_01;

----------------------------------------------------------------------------------

--WHERE

/*
 * The WHERE clause is used to filter records.
 * The WHERE clause is used to extract only those records that fulfill a specified condition.
 */

SELECT * FROM trk_test_01 WHERE lastname='kawhi';
SELECT * FROM trk_test_02 WHERE city='BP';

/*
 * SQL requires single quotes around text values (most database systems will also allow double quotes).
 * However, numeric fields should not be enclosed in quotes:
 */

SELECT * FROM trk_test_02 WHERE systemid=5;

--Operators in The WHERE Clause

/*
 * =	Equal
 * >	Greater than
 * <	Less than
 * >=	Greater than or equal
 * <=	Less than or equal
 * <>	Not equal. Note: In some versions of SQL this operator may be written as !=
 * BETWEEN	Between a certain range
 * LIKE	Search for a pattern
 * IN	To specify multiple possible values for a column
 */

----------------------------------------------------------------------------------

--AND, OR, NOT

/*
 * The WHERE clause can be combined with AND, OR, and NOT operators.
 * The AND and OR operators are used to filter records based on more than one condition
 * The AND operator displays a record if all the conditions separated by AND are TRUE
 * The OR operator displays a record if any of the conditions separated by OR is TRUE
 */

--AND

SELECT * FROM trk_test_02 WHERE city='BP' AND city='BA';

--OR

SELECT * FROM trk_test_02 WHERE city='BP' OR city='BA';

--NOT

SELECT * FROM trk_test_02 WHERE NOT city='BP';

--Combining AND, OR and NOT

SELECT * FROM trk_test_02 WHERE dep='ITOPS' AND (City='BA' OR City='BP');
SELECT * FROM trk_test_02 WHERE NOT city='NYC' AND NOT dep='ITOPS';

----------------------------------------------------------------------------------

--ORDER BY

/*
 * The ORDER BY keyword is used to sort the result-set in ascending or descending order.
 * The ORDER BY keyword sorts the records in ascending order by default.
 * To sort the records in descending order, use the DESC keyword.
 *
 *
 */

--ORDER BY

SELECT * FROM trk_test_01 ORDER BY city;

--ORDER BY DESC

SELECT * FROM trk_test_01 ORDER BY city DESC;

--ORDER BY Several Columns Example

SELECT * FROM trk_test_02 ORDER BY dep, city;
SELECT * FROM trk_test_02 ORDER BY dep ASC, city DESC;

----------------------------------------------------------------------------------

--LIMIT

/*
 * The SELECT TOP or LIMIT clause is used to specify the number of records to return.
 */

--The following SQL statement shows the equivalent example using the LIMIT clause:

SELECT * FROM trk_test_01 LIMIT 3;

----------------------------------------------------------------------------------

--MIN, MAX

/*
 * The MIN() function returns the smallest value of the selected column.
 * The MAX() function returns the largest value of the selected column.
 */

SELECT MIN(systemid) AS SmallestSysid FROM trk_test_02;
SELECT MAX(systemid) AS LargestSysid FROM trk_test_02;

----------------------------------------------------------------------------------

--COUNT(), AVG(), SUM()

/*
 * The COUNT() function returns the number of rows that matches a specified criteria.
 * The AVG() function returns the average value of a numeric column.
 * The SUM() function returns the total sum of a numeric column.
 */

--COUNT()

SELECT COUNT(personid) FROM trk_test_01;
SELECT COUNT(DISTINCT city) FROM trk_test_02;

--NULL values are not counted.

--AVG()

SELECT AVG(personid) FROM trk_test_01;

--NULL values are ignored.

--SUM()

SELECT SUM(personid) as sum_of_personid FROM trk_test_01;

--NULL values are not counted.

----------------------------------------------------------------------------------

--BETWEEN

/*
 * description in progress
 *
 *
 *
 */

SELECT * FROM trk_test_01 WHERE personid BETWEEN 2 AND 4;
SELECT * FROM trk_test_01 WHERE personid not BETWEEN 2 AND 4;
SELECT * FROM trk_test_01 WHERE personid BETWEEN 2 AND 4 AND NOT lastname IN ('doe');
SELECT * FROM trk_test_01 WHERE city BETWEEN 'GS' AND 'ams' ORDER BY city;

----------------------------------------------------------------------------------

--IN

/*
 *
 *
 *
 *
 */

SELECT address FROM trk_test_01 WHERE city IN ('GS', 'Dallas', 'toronto');
SELECT address FROM trk_test_01 WHERE city NOT IN ('GS', 'Dallas', 'toronto');
SELECT * FROM trk_test_01 WHERE city IN (SELECT city FROM trk_test_02); -- compare two columns from two different tables

----------------------------------------------------------------------------------

--LIKE

/*
 * The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
 * There are two wildcards often used in conjunction with the LIKE operator
 * % - The percent sign represents zero, one, or multiple characters
 * _ - The underscore represents a single character
 */

SELECT * FROM trk_test_01 WHERE lastname LIKE 't%'; --first char
SELECT * FROM trk_test_01 WHERE lastname LIKE '%i'; --last char
SELECT * FROM trk_test_01 WHERE lastname LIKE '%oe%'; --two chars in the middle
SELECT * FROM trk_test_01 WHERE lastname LIKE '_o%'; --second char
SELECT * FROM trk_test_01 WHERE lastname LIKE 'b_%_%'; --first char and min 3 char
SELECT * FROM trk_test_01 WHERE lastname LIKE 'e%g'; --first and last chars
SELECT * FROM trk_test_01 WHERE lastname NOT LIKE 'd%'; --without d as first

----------------------------------------------------------------------------------

--WILDCARDS

/*
 * A wildcard character is used to substitute one or more characters in a string.
 *
 */

----------------------------------------------------------------------------------

--ALIASES

/*
 *
 *
 *
 *
 */

SELECT personid AS PI, firstname AS FI FROM trk_test_01;

----------------------------------------------------------------------------------

--INSERT INTO

/*
 * The INSERT INTO statement is used to insert new records in a table.
 * It is possible to write the INSERT INTO statement in two ways.
 * The first way specifies both the column names and the values to be inserted
 * If you are adding values for all the columns of the table, you do not need to specify the column names in the SQL query.
 * However, make sure the order of the values is in the same order as the columns in the table.
 */

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

----------------------------------------------------------------------------------

--NULL VALUES

/*
 * A field with a NULL value is a field with no value.
 * If a field in a table is optional, it is possible to insert a new record or update a record without
 * adding a value to this field. Then, the field will be saved with a NULL value.
 *
 */

--The IS NULL operator is used to test for empty values (NULL values).

SELECT * FROM trk_test_01 WHERE lastname IS NOT NULL;
SELECT * FROM trk_test_01 WHERE lastname IS NULL;

----------------------------------------------------------------------------------

--UPDATE

/*
 * The UPDATE statement is used to modify the existing records in a table.
 */

UPDATE trk_test_01 SET city = 'BP' WHERE personid = 5;
UPDATE Customers SET ContactName='Juan' WHERE Country='Mexico';

----------------------------------------------------------------------------------

--DELETE

/*
 * The DELETE statement is used to delete existing records in a table.
 */

DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';
DELETE FROM Customers;

----------------------------------------------------------------------------------

--CREATE

/*
 *
 *
 *
 *
 */

CREATE TABLE trk (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

--CREATE, INSERT and SELECT table
CREATE TABLE trk (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

INSERT INTO trk (PersonID , LastName , FirstName , Address , City)
VALUES (01, 'Doe', 'John', 'Main str.', 'Norway');

select * from trk

----------------------------------------------------------------------------------

--ALTER

/*
 *
 *
 *
 *
 */

--How to rename column name from department to dep
ALTER TABLE trk_test_02
RENAME COLUMN department TO dep;

--add new column to the table
ALTER TABLE trk_test_02
ADD city varchar(255);

--change the table name from trk_test to trk_test_01
ALTER TABLE trk_test
RENAME TO trk_test_01;

----------------------------------------------------------------------------------

--JOIN

/*
 *
 *
 *
 *
 */

SELECT trk_test_01.personid, trk_test_01.lastname, trk_test_02.dep
FROM trk_test_01
INNER JOIN trk_test_02 ON trk_test_01.personid=trk_test_02.systemid;

----------------------------------------------------------------------------------

--UNION

/*
 *
 *
 *
 *
 */

SELECT city FROM trk_test_01 UNION SELECT city FROM trk_test_02 ORDER BY city; --without duplicates
SELECT city FROM trk_test_01 UNION ALL SELECT city FROM trk_test_02 ORDER BY city; --with duplicates

----------------------------------------------------------------------------------

--GROUP BY


----------------------------------------------------------------------------------

--INDEX

/*
 * Indexes are used to retrieve data from the database very fast.
 * The users cannot see the indexes, they are just used to speed up searches/queries.
 *
 *
 */

--CREATE INDEX

SELECT * FROM pg_indexes WHERE tablename NOT LIKE 'pg%';

CREATE INDEX idx_lastname ON trk_test_01 (lastname);

SELECT * FROM pg_indexes WHERE tablename NOT LIKE 'pg%';

--DROP INDEX

DROP INDEX idx_lastname;

SELECT * FROM pg_indexes WHERE tablename NOT LIKE 'pg%';

----------------------------------------------------------------------------------

--db2 truncate

/*
 *
 *
 *
 *
 */

TRUNCATE TABLE metadata.ichar_check_log_hist_test immediate;

----------------------------------------------------------------------------------

-- CASE

/*
 * The CASE statement goes through conditions and returns a value when the first condition is met (like an IF-THEN-ELSE statement).
 * So, once a condition is true, it will stop reading and return the result. If no conditions are true, it returns the value in the ELSE clause.
 */

CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    WHEN conditionN THEN resultN
    ELSE result
END;

SELECT personid, lastname,
CASE
    WHEN personid <= 3 THEN "firstname"
    WHEN personid = 4 THEN "address"
    ELSE "city"
END AS checkk
FROM trk_test_01;

----------------------------------------------------------------------------------

CREATE PROCEDURE
SelectAllCustomers
begin
SELECT lastname FROM trk_test_01
end;

CALL SelectAllCustomers;

----------------------------------------------------------------------------------
