USE ecomerce;
-- From the following table, write a SQL query to find the details of 
-- those salespeople who live in cities other than Paris and Rome. 
-- Return salesman_id, name, city, commission.

SELECT * FROM SalesMan 
WHERE City NOT IN("Paris","Rome");

--  From the following table, write a SQL query to find salespeople who 
--  receive commissions between 0.12 and 0.14 (begin and end values are 
--  included).Return salesman_id, name, city, and commission.

SELECT * FROM SalesMan 
WHERE Commission BETWEEN 0.12 AND 0.14;

-- From the following table, write a SQL query to select orders between 
-- 500 and 4000 (begin and end values are included). Exclude orders 
-- amount 948.50 and 1983.43. 
-- Return ord_no, purch_amt, ord_date, customer_id, and salesman_id.

SELECT * FROM SalesOrders 
WHERE (PurchAmt BETWEEN 500 AND 4000) AND  
(ROUND(PurchAmt,2) NOT IN (948.50,1983.43));

select PurchAmt from SalesOrders where OrdNo=70010;
-- From the following table, write a SQL query to retrieve the details
--  of the salespeople whose names begin with any letter between 'A' 
--  and 'L' (not inclusive). Return salesman_id, name, city, commission. 

SELECT * FROM SalesMan
WHERE Name BETWEEN 'A' AND 'L';

--  From the following table, write a SQL query to find the details of
--  all salespeople except those whose names begin with any letter between 'A' and 'M'. 
--  Return salesman_id, name, city, commission.  

SELECT * FROM SalesMan WHERE NOT NAME BETWEEN 'A' AND 'M'; 

-- From the following table, write a SQL query to retrieve the details
--  of the customers whose names begins with the letter 'B'.
--  Return customer_id, cust_name, city, grade, salesman_id.. 

SELECT * FROM SalesCustomer 
WHERE CustName LIKE "B%"; 

-- . From the following table, write a SQL query to find the details of
--  the customers whose names end with the letter 'n'. 
-- Return customer_id, cust_name, city, grade, salesman_id.

SELECT * FROM SalesCustomer
WHERE CustName LIKE "%n";

-- From the following table, write a SQL query to find the details 
-- of those salespeople whose names begin with ‘N’ and the fourth 
-- character is 'l'. Rests may be any character.
--  Return salesman_id, name, city, commission.

SELECT * FROM SalesMan 
WHERE Name LIKE "N__l%";

CREATE TABLE TestTable (COL1 VARCHAR(30));

INSERT INTO TestTable VALUES
("A001/DJ-402\44_/100/2015"),
("A001_\DJ-402\44_/100/2015"),
("A001_DJ-402-2014-2015"),
("A002_DJ-401-2014-2015"),
("A001/DJ_401"),
("A001/DJ_402\44"),
("A001/DJ_402\44\2015"),
("A001/DJ-402%45\2015/200"),
("A001/DJ_402\45\2015%100"),
("A001/DJ_402%45\2015/300"),
("A001/DJ-402\44");

 -- From the following table, write a SQL query to find those rows where 
--  col1 contains the escape character underscore ( _ ). Return col1.
SELECT * FROM TestTable 
where COL1 LIKE "%/_%" ESCAPE "/";

-- . From the following table, write a SQL query to 
-- identify those rows where col1 does not contain
--  the escape character underscore ( _ ). Return col1.

SELECT * FROM TestTable WHERE COL1 NOT LIKE "%/_%" ESCAPE "/";

-- From the following table, write a SQL query to 
-- find rows in which col1 contains the forward slash
--  character ( / ). Return col1.

SELECT * FROM TestTable WHERE COL1 LIKE "%//%" ESCAPE "/";

--  From the following table, write a SQL query to find those rows
--  where col1 contains the string ( _/ ). Return col1.

SELECT * FROM TestTable WHERE COL1 LIKE "%/_//%" ESCAPE "/";

-- From the following table, write a SQL query to find those rows where col1 
-- contains the character percent ( % ). Return col1.

SELECT * FROM TestTable WHERE COL1 LIKE "%/%%" ESCAPE "/";

