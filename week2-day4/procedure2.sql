use ecomerce;
SELECT * FROM SalesOrders;

Create table purchamt1 (purchamt FLOAT);

DELIMITER //
CREATE PROCEDURE PurchAmt12 (IN purchamt int,out varb int)
BEGIN 
IF(SalesOrders.PurchAmt>purchamt) then
INSERT INTO purchamt1 values (SalesOrders.PurchAmt);
end if;
end //
DELIMITER ;
DROP TABLE purchamt1;
INSERT INTO purchamt1 
select PurchAmt from SalesOrders where PurchAmt>1000 ; 
SELECT * from SalesCustomer;
Select reverse(CustName) from SalesCustomer;
call PurchAmt12(1000,@varb);
