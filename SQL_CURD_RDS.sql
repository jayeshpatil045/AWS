'''

@Author: Jayesh Patil

@Date: 20-10-24

@Title: CURD Operation in RDS Using MSSQL

'''
--CREATE DATABASE 
CREATE DATABASE TEST
--USE DATABASE
USE TEST
--CREATE TABLE 
CREATE TABLE Employees(
         EmployeeID INT PRIMARY KEY IDENTITY(1,1),
         First_name VARCHAR(100),
		 Last_name VARCHAR(100),
		 Department VARCHAR(150),
		 Salary INT )
SELECT * FROM Employees
--1. CREATE (Insert Data into a Table)
INSERT INTO Employees (First_name, Last_name, Department, Salary)
VALUES ('Jayesh', 'Patil', 'Engineering', 50000),
       ('Hitesh','Patil','Testing',30000),
	   ('Sam','Thumbe','Dev',60000),
	   ('Anjali', 'Sharma', 'HR', 40000),
       ('Ravi', 'Kumar', 'Engineering', 55000),
       ('Sita', 'Verma', 'Finance', 60000);
-- 2.READ (Retrieve Data)
--Select All Records
SELECT * FROM Employees

--Select Specific Columns
SELECT First_name, Last_name FROM Employees;

--Filtering Data
SELECT * FROM Employees WHERE Department = 'Engineering';

--Sorting Results
SELECT * FROM Employees ORDER BY Salary DESC;

--Aggregating Data
SELECT Department, AVG(Salary) as AvgSalary
FROM Employees
GROUP BY Department;

--3. UPDATE (Modify Existing Data)
--Basic Update
UPDATE Employees
SET Salary = 60000
WHERE First_name = 'Jayesh' AND Last_name = 'Patil';

--Update Multiple Columns
UPDATE Employees
SET Salary = 65000, Department = 'Management'
WHERE EmployeeID = 1;  -- Assuming EmployeeID = 1 is for Jayesh

--4. DELETE (Remove Data)
DELETE FROM Employees
WHERE EmployeeID = 2;  -- Change this to the appropriate ID







