use ecomerce;

-- From the Customer table, write a SQL query to locate the details 
-- of customers with grade values above 100. 
-- Return customer_id, cust_name, city, grade, and salesman_id. 

SELECT * FROM SalesCustomer WHERE Grade>100;

--  From the following table, write a SQL query to
--  find all the customers in ‘New York’ city who have a grade value above 100.
--  Return customer_id, cust_name, city, grade, and salesman_id. 

SELECT * FROM SalesCustomer where City="New York" and Grade>100; 

-- From the following table, write a SQL query to find details of all
--  orders excluding those with ord_date equal to '2012-09-10' and 
--  salesman_id higher than 5005 or purch_amt greater than 1000.
-- Return ord_no, purch_amt, ord_date, customer_id and salesman_id.

SELECT OrdNo,PurchAmt,OrdDate,CustomerId,SalesManId 
FROM SalesOrders 
WHERE OrdDate="2012-09-10" and SalesManId>5005 or PurchAmt>1000;

-- Write a SQL query that displays order number, purchase amount, 
-- and the achieved and unachieved percentage (%) for those orders that
--  exceed 50% of the target value of 6000.

Select OrdNo,PurchAmt,
(100*PurchAmt)/6000 as "Achieved",
(100*(6000-PurchAmt)/6000) as "Unachived"
FROM SalesOrders 
WHERE (100*PurchAmt)/6000>50;



