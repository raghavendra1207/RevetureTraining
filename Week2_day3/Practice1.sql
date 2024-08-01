-- From the following table, write a SQL query to calculate total
--  purchase amount of all orders. Return total purchase amount.
USE Ecomerce; 
SELECT ROUND(SUM(PurchAmt),2) from SalesOrders;

-- From the following table, write a SQL query to calculate the average purchase amount of all orders. 
-- Return average purchase amount. 

SELECT AVG(PurchAmt) FROM SalesOrders;

 -- From the following table, write a SQL query that counts the 
 -- number of unique salespeople. Return number of salespeople.  

-- Sample table: orders

SELECT COUNT(DISTINCT SalesManId) FROM SalesOrders;

--  From the following table, write a SQL query to count the 
-- number of customers. 
--  Return number of customers.  
SELECT COUNT(CustomerId) FROM SalesCustomer;
 
--   From the following table, write a SQL query to determine the number of customers 
--   who received at least one grade for their activity. 

SELECT COUNT(Grade) FROM SalesCustomer WHERE Grade IS NOT NULL; 

-- From the following table, write a SQL query to find the highest 
-- grade of the customers in each city.
--  Return city, maximum grade.

SELECT City,MAX(Grade) FROM SalesCustomer GROUP BY City ORDER BY MAX(GRADE) DESC;

-- From the following table, write a SQL query to find the highest 
-- purchase amount ordered by each customer. 
-- Return customer ID, maximum purchase amount. 

SELECT CustomerId,MAX(PurchAmt) FROM SalesOrders GROUP BY CustomerId;

-- From the following table, write a SQL query to find the 
-- highest purchase amount ordered by each customer on a 
-- particular date. 
-- Return, order date and highest purchase amount.
SELECT  CustomerId,OrdDate,max(PurchAmt) FROM SalesOrders
GROUP BY OrdDate,CustomerId;

 -- From the following table, write a SQL query to determine the 
--  highest purchase amount made by each salesperson on '2012-08-17'. 
--  Return salesperson ID, purchase amount 
SELECT SalesManId,Max(PurchAmt) FROM SalesOrders
 WHERE OrdDate="2012-08-17" GROUP BY SalesManId;
 
--  From the following table, write a SQL query to find 
--  the highest order (purchase) amount by each customer 
--  on a particular order date. Filter the result by highest 
--  order (purchase) amount above 2000.00.
--  Return customer id, order date and maximum purchase amount.

SELECT CustomerId,OrdDate,MAX(PurchAmt) FROM SalesOrders 
WHERE PurchAmt>2000 group by CustomerId,OrdDate;

-- From the following table, write a SQL query to find the 
-- maximum order (purchase) amount in the range 2000 - 6000 
-- (Begin and end values are included.) by combination of each customer
--  and order date. 
-- Return customer id, order date and maximum purchase amount.

SELECT CustomerId,OrdDate,MAX(PurchAmt) FROM SalesOrders
WHERE PurchAmt BETWEEN 2000 AND 6000 GROUP BY CustomerId,ordDate;

-- From the following table, write a SQL query to 
-- find the maximum order (purchase) amount for each customer. 
-- The customer ID should be in the range 3002 and 3007(Begin and end 
-- values are included.). Filter the rows for maximum order (purchase) 
-- amount is higher than 1000. 
-- Return customer id and maximum purchase amount.

SELECT CustomerId,MAX(PurchAmt) FROM SalesOrders 
WHERE  PurchAmt>1000 AND 
CustomerId BETWEEN 3002 AND 3007  GROUP BY CustomerId;

-- From the following table, write a SQL query to count all the 
-- orders generated on '2012-08-17'. Return number of orders
SELECT COUNT(OrdNo) FROM SalesOrders where OrdDate='2012-08-17';

-- From the following table, write a SQL query to count the 
-- number of orders based on the combination of each order date 
-- and salesperson. Return order date, salesperson id.

SELECT OrdDate,SalesManId,Count(OrdNo) FROM SalesOrders
group by OrdDate,SalesManId;
