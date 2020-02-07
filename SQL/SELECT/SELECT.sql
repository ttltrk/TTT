
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
