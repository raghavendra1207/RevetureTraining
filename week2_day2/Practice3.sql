-- JOINS

USE Ecomerce;

SELECT * FROM SalesMan;
SELECT * FROM SalesCustomer;


-- INNER JOIN
SELECT S.SalesManID,S.Name,S.City,C.CustomerId,C.CustName,S.Commission
FROM SalesMan S 
INNER JOIN SalesCustomer C 
WHERE S.SalesManId=C.SalesManId;