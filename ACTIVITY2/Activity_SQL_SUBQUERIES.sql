-- Find the names of employees who work in the same department as 'John'
-- Find departments that have more than one employee
-- Find the projects that are not assigned to any department
-- Find the department with the maximum number of employees.
-- Find employees who are working on projects in the 'Sales' department.
-- Find the names of departments that do not have any projects.
-- Find employees who are not working on any project.
-- Find the department names and the number of employees in each department, only for departments with more than two employees.
-- Find the projects handled by employees in the 'IT' department.
-- Find the names of employees who do not work in the 'Marketing' department.

Use Employee;
-- Find the names of employees who work in the same department as 'John'

-- 1
SELECT EmployeeName from Employee
 where DepartmentID in (SELECT DepartmentID from employee where EmployeeName="John") 
 AND EmployeeName!="John";

-- Find departments that have more than one employee
-- 2
Select DepartmentName From Departments
 where DepartmentID IN (SELECT DepartmentID FROM Employee GROUP BY DepartmentID HAVING COUNT(DepartmentID)>1);
 
 -- Find the projects that are not assigned to any department
 -- 3
 
 SELECT ProjectName from Projects WHERE DepartmentID IS NULL;
 
 -- Find the department with the maximum number of employees.
 -- 4
 
 SELECT DepartmentName,
 (SELECT COUNT(DepartmentID) FROM Employee GROUP BY DepartmentID ORDER BY count(DepartmentID) DESC LIMIT 1) 
 AS COUNT1 FROM Departments
 WHERE DepartmentID IN (SELECT DepartmentID FROM Employee GROUP BY DepartmentID ORDER BY count(DepartmentID) DESC ) LIMIT 1;
 
 
-- Find employees who are working on projects in the 'Sales' department. 
-- 5
 
SELECT EmployeeName FROM Employee WHERE DepartmentID in (SELECT DepartmentID FROM Departments where DepartmentName="Sales");

-- Find the names of departments that do not have any projects.
-- 6
SELECT * FROM PROJECTS;
SELECT * FROM DEPARTMENTS;
INSERT INTO DEPARTMENTS VALUES (5,"NON PROJECT");
DELETE FROM Departments WHERE DepartmentID=5;
SELECT DepartmentName FROM Departments WHERE DepartmentID NOT IN (SELECT DepartmentID FROM Projects where DepartmentID IS NOT NULL);

-- Find employees who are not working on any project.
-- 7
SELECT * FROM employee;
Update Employee 
SET DepartmentID=5 where EmployeeID=5;

SELECT DepartmentID FROM Projects WHERE DepartmentID IS NOT NULL;

SELECT EmployeeName From Employee Where DepartmentID Not IN (SELECT DepartmentID FROM Projects WHERE DepartmentID IS NOT NULL );

-- Find the department names and the number of employees in each department, only for departments with more than two employees.
-- 8

SELECT DepartmentName,(SELECT count(DepartmentID) FROM Employee group by DepartmentID Having count(DepartmentID)>1) as count1 FROM Departments
WHERE DepartmentID in (SELECT DepartmentID FROM Employee group by DepartmentID Having count(DepartmentID)>1);

-- Find the projects handled by employees in the 'IT' department.
-- 9
SELECT ProjectName From Projects WHERE DepartmentID IN (SELECT DepartmentID FROM Departments where DepartmentName="IT");

-- Find the names of employees who do not work in the 'Marketing' department.
-- 10
SELECT EmployeeName FROM Employee WHERE DepartmentID NOT IN (SELECT DepartmentID FROM DEPARTMENTS WHERE DepartmentName="Marketing");