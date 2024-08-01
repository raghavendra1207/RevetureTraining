-- ACTIVITY


-- Sure! Here are some scenario-based coding questions involving different types of joins, using a sample database.

-- Employee Database Schema

CREATE DATABASE Employee;
USE Employee;
-- Employees

CREATE TABLE Employee (EmployeeID INT PRIMARY KEY AUTO_INCREMENT,EmployeeName VARCHAR(20),DepartmentID INT);
-- EmployeeID	EmployeeName	DepartmentID
-- 1	John	1
-- 2	Jane	2
-- 3	Mark	1
-- 4	Emily	3
-- Departments
CREATE TABLE Departments (DepartmentID INT PRIMARY KEY,DepartmentName VARCHAR(20));
ALTER TABLE Employee
ADD FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID); 

INSERT INTO Departments VALUES (1,"Sales"),
(2,	"HR"),
 (3,"IT"),
(4,"Marketing");
-- DepartmentID	DepartmentName
-- 1	Sales
-- 2	HR
-- 3	IT
-- 4	Marketing

INSERT INTO Employee VALUES 
(1,"John",1),
(2,"Jane",2),
(3,"Mark",1),
(4,"Emily",3);
-- Projects
 CREATE TABLE Projects (ProjectID INT PRIMARY KEY ,	ProjectName	VARCHAR(20),DepartmentID INT,
 FOREIGN KEY(DepartmentID) REFERENCES Departments(DepartmentID));
-- ProjectID	ProjectName	DepartmentID
INSERT INTO Projects VALUES (101,"Project A",1),
(102,	"Project B",	2),
(103,	"Project C",	3),
(104,	"Project D",	4),
(105,	"Project E",	NULL);

-- (102,	"Project B",	2),
-- (103,	"Project C",	3),
-- (104,	"Project D",	4),
-- (105,	"Project E",    NULL);


SELECT * from Employee;
SELECT * FROM Departments;
SELECT * FROM Projects;

-- Retrieve the list of employees along with their department names where employees are associated with departments.
SELECT E.EmployeeID,E.EmployeeName,D.DepartmentName
from EmpLoyee E
INNER JOIN Departments D
ON E.DepartmentID=D.DepartmentID;

-- Retrieve all employees and their associated department names. If an employee does not belong to a department, show NULL.
SELECT E.EmployeeID,E.EmployeeName,D.DepartmentName
from EmpLoyee E
LEFT JOIN Departments D
ON E.DepartmentID=D.DepartmentID;

-- Retrieve all departments and the names of employees in those departments. If a department does not have any employees, show NULL.

SELECT D.DepartmentName,E.EmployeeName
FROM EmpLoyee E
RIGHT JOIN Departments D
ON E.DepartmentID=D.DepartmentID;

-- Retrieve all possible combinations of employees and projects.

SELECT E.EmployeeID,E.EmployeeName,P.ProjectName,P.DepartmentID
FROM Employee E
INNER JOIN Projects P
on E.DepartmentID=P.DepartmentID;

-- Retrieve the list of employees whose department ID is greater than the department ID of "HR" department-- 
SELECT E.EMPLOYEEID,E.EMPLOYEENAME,E.DepartmentID,D.DepartmentName,D.DepartmentID
FROM Employee E
INNER JOIN Departments D
ON E.DepartmentID>D.DepartmentID
WHERE D.DepartmentID IN (SELECT DepartmentID FROM Departments where DepartmentName="HR");

-- Retrieve the list of projects along with their department names, where the projects are associated with departments

SELECT P.ProjectName,D.DepartmentName 
FROM Projects P 
INNER JOIN Departments D
on P.DepartmentID=D.DepartmentID;

Insert into Employee(EmployeeID,EmployeeName) VALUES (5,"RAGHAV");
-- Find employees who are not assigned to any department

SELECT * FROM Employee;
select DepartmentID from Departments where 
DepartmentID is NOT NULL;
SELECT E.EmployeeName,D.DepartmentName 
FROM Employee E 
LEFT JOIN Departments D
ON E.DepartmentID=D.DepartmentID
WHERE E.DepartmentID IS NULL;

-- Find departments that have no employees

SELECT E.EmployeeName,D.DepartmentName 
FROM Employee E 
RIGHT JOIN Departments D
ON E.DepartmentID=D.DepartmentID
WHERE E.DepartmentID IS NULL  ;

-- Find all departments along with the number of employees in each department
SELECT D.DepartmentName,COUNT(E.DepartmentID) 
FROM Employee E 
INNER JOIN Departments D
ON E.DepartmentID=D.DepartmentID
GROUP BY E.DepartmentID;
-- Questions
-- Retrieve the list of employees along with their department names where employees are associated with departments.
-- Retrieve all employees and their associated department names. If an employee does not belong to a department, show NULL.
-- Retrieve all departments and the names of employees in those departments. If a department does not have any employees, show NULL.
-- Retrieve all possible combinations of employees and projects.
-- Retrieve the list of employees whose department ID is greater than the department ID of HR department
-- Retrieve the list of projects along with their department names, where the projects are associated with departments
-- Find employees who are not assigned to any department
-- Find departments that have no employees
-- Find all departments along with the number of employees in each department


