-- From the following table, write a SQL query to select all the 
 -- salespeople. Return salesman_id, name, city, commission with the
-- percent sign (%).

-- Sample table: salesman
USE Ecomerce;
SELECT SalesManId, Name,City,"%",Commission FROM SalesMan;

 -- From the following table, write a SQL query to find the number of orders booked for each day. Return the result 
--  in a format like "For 2001-10-10 there are 15 orders".".  

SELECT "FOR",OrdDate,"THERe are",COUNT(OrdNo),"ORDERS"
FROM salesorders group by OrdDate ; 

 -- From the following table, write a SQL query to find all the orders. Sort the result-set in ascending order by ord_no. Return all fields.
 SELECT * FROM SalesOrders ORDER BY OrdNo;
 
  -- From the following table, write a SQL query to find all 
  -- the orders. Sort the result-set in descending order by
--   ord_date and purch_amt. Return all fields. 

SELECT * FROM SalesOrders ORDER BY OrdDate DESC,PurchAmt DESC;

--  From the following table, write a SQL query to calculate the summation of purchase amount, 
-- total commission (15% for all salespeople) by each order date. Sort the result-set on order date. 
--  Return order date, summation of purchase amount and commission.

SELECT OrdDate,ROUND(SUM(PurchAmt),2),ROUND(15*SUM(PurchAmt)/100,2) FROM SalesOrders  GROUP BY OrdDate;
