create database ECommerce;
use ECommerce;

CREATE TABLE Customer(Customer_id INT  PRIMARY KEY ,FirstName VARCHAR(20), LastName VARCHAR(20));

ALTER TABLE Customer 
MODIFY COLUMN Customer_id INT AUTO_INCREMENT;

CREATE TABLE Product(ProductId INT PRIMARY KEY AUTO_INCREMENT,ProductName VARCHAR(20));

ALTER TABLE Customer
ADD COLUMN ProductId INT,
ADD FOREIGN KEY (ProductId) REFERENCES Product(ProductId) ON DELETE CASCADE ON UPDATE SET NULL;

CREATE TABLE OrderDetails (OrderId INT PRIMARY KEY, ORDERNAME VARCHAR(20) );

ALTER TABLE Product
ADD COLUMN OrderId INT,
ADD FOREIGN KEY (OrderId) REFERENCES OrderDetails(OrderId);

INSERT INTO Customer(FirstName,LastName) VALUES ("Gandla","Raghavender");


Insert INTO Product(ProductName) VALUES ("Watch");



INSERT INTO OrderDetails VALUES (1,"Watch");



INSERT INTO Customer VALUES (2,"Pawan","Kalyan",2);
INSERT INTO Product VALUES (2,"watch",1);

SELECT * From Customer;
SELECT * FROM Product;
SELECT * FROM OrderDetails;
 