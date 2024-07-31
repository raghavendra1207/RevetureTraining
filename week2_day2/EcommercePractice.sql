CREATE DATABASE ECOMERCE;
USE ECOMERCE;

-- salesman_id |    name    |   city   | commission 
-- -------------+------------+----------+------------
--         5001 | James Hoog | New York |       0.15
--         5002 | Nail Knite | Paris    |       0.13
--         5005 | Pit Alex   | London   |       0.11
--         5006 | Mc Lyon    | Paris    |       0.14
--         5007 | Paul Adam  | Rome     |       0.13
--         5003 | Lauson Hen | San Jose |       0.12


CREATE TABLE SalesMan (SalesManId INT PRIMARY KEY,Name VARCHAR(30), City VARCHAR(20), Commission float);

INSERT INTO SalesMan values (5001,"James Hoog","New York",0.15),
(5002,"Nail Knite","Paris",0.13),
(5005,"Pit Alex","London",0.11),
(5006,"Mc Lyon","Paris",0.14),
(5007,"Paul Adam","Rome",0.13),
(5003,"Lauson Hen","San Jose",0.12);

-- Write a SQL statement to display a string "This is SQL Exercise, Practice and Solution".-  
SELECT "This is SQL Exercise, Practice and Solution";

-- Write a SQL query to display three numbers in three columns. 
SELECT 5,10,15;

-- Write a SQL query to display the sum of two numbers 10 and 15 from the RDBMS server. 
SELECT 10+15;

-- Write a SQL statement to display specific columns such as names and commissions for all salespeople.     
SELECT Name,Commission FROM SalesMan;

-- Write a query to display the columns in a specific order, such as order date, salesman ID, order number, and purchase amount for all orders.  
-- Sample table: orders



-- customer_id |   cust_name    |    city    | grade | salesman_id 
-- -------------+----------------+------------+-------+-------------
--         3002 | Nick Rimando   | New York   |   100 |        5001
--         3007 | Brad Davis     | New York   |   200 |        5001
--         3005 | Graham Zusi    | California |   200 |        5002
--         3008 | Julian Green   | London     |   300 |        5002
--         3004 | Fabian Johnson | Paris      |   300 |        5006
--         3009 | Geoff Cameron  | Berlin     |   100 |        5003
--         3003 | Jozy Altidor   | Moscow     |   200 |        5007
--         3001 | Brad Guzan     | London     |       |        5005

CREATE TABLE SalesCustomer(CustomerId INT Primary key,   CustName VARCHAR(30),  City VARCHAR(20), Grade INT, SalesManId int,
FOREIGN KEY(SalesManId) REFERENCES SalesMan(SalesManId) );

INSERT INTO SalesCustomer VALUES (3002, "Nick Rimando",  "New York" ,   100 , 5001),
(3007,"Brad Davis" , "New York" , 200 ,5001),
(3005, "Graham Zusi",     "California",    200  ,        5002),
(3008,  "Julian Green",    "London",        300 ,        5002),
(3004,  "Fabian Johnson",  "Paris",         300 ,       5006),
(3009,  "Geoff Cameron",   "Berlin",        100 ,      5003),
(3003,  "Jozy Altidor",    "Moscow",        200 ,     5007);

INSERT INTO SalesCustomer(CustomerId,CustName,City,SalesManId) VALUES (3001,  "Brad Guzan",      "London",                   5005);


-- ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001
-- 70004       110.5       2012-08-17  3009         5003
-- 70007       948.5       2012-09-10  3005         5002
-- 70005       2400.6      2012-07-27  3007         5001
-- 70008       5760        2012-09-10  3002         5001
-- 70010       1983.43     2012-10-10  3004         5006
-- 70003       2480.4      2012-10-10  3009         5003
-- 70012       250.45      2012-06-27  3008         5002
-- 70011       75.29       2012-08-17  3003         5007
-- 70013       3045.6      2012-04-25  3002         5001

CREATE TABLE SalesOrders (OrdNo INT PRIMARY KEY,PurchAmt float, OrdDate DATE,CustomerId INT,SalesManId INT,
FOREIGN KEY (CustomerId) REFERENCES SalesCustomer(CustomerId),
FOREIGN KEY (SalesManId) REFERENCES SalesMan(SalesManId));

INSERT INTO SalesOrders VALUES 
(70009 ,      270.65  ,    "2012-09-10",  3001 ,        5005),
( 70002,       65.26,       "2012-10-05",  3002,         5001),
( 70004,       110.5,       "2012-08-17",  3009,         5003),
( 70007,       948.5,       "2012-09-10",  3005,        5002),
( 70005,       2400.6,      "2012-07-27",  3007 ,        5001),
( 70008,       5760,        "2012-09-10",  3002,         5001),
( 70010,       1983.43,     "2012-10-10",  3004,         5006),
( 70003,       2480.4,      "2012-10-10",  3009,         5003),
( 70012,       250.45,      "2012-06-27",  3008,         5002),
( 70011,       75.29,       "2012-08-17",  3003,         5007),
( 70013,       3045.6,      "2012-04-25",  3002,         5001);

-- Write a query to display the columns in a specific order, such as order date, salesman ID, order number, and purchase amount for all orders.  
SELECT OrdDate,SalesManId,OrdNo,PurchAmt 
from SalesOrders;

--  From the orders table, write a SQL query to identify the unique salespeople ID. Return salesman_id.

SELECT DISTINCT SalesManId 
FROM SalesOrders ;

-- From the SalesMan table, write a SQL query to locate salespeople who live in the city of 'Paris'. Return salesperson's name, city.  

SELECT Name,City 
FROM SalesMan
WHERE City="Paris";

-- From the following table, write a SQL query to find customers whose grade is 200. Return customer_id, cust_name, city, grade, salesman_id.  

-- Sample table: customer 

SELECT * 
FROM SalesCustomer
WHERE Grade=200 ;

-- From the following table, write a SQL query to find orders that are delivered by a salesperson with ID. 5001. Return ord_no, ord_date, purch_amt.   

SELECT OrdNo,OrdDate,PurchAmt 
FROM SalesOrders 
where SalesManId=5001;




 
 

