CREATE DATABASE EmployeeAnalysis;

USE EmployeeAnalysis;
CREATE TABLE Employees (
EmpID INT PRIMARY KEY,
EmployeeName VARCHAR(50),
Department VARCHAR(30),
Salary INT,
Experience INT
);

INSERT INTO Employees
(EmpID, EmployeeName, Department, Salary, Experience)
VALUES
(101, 'Rahul', 'IT', 40000, 2),
(102, 'Priya', 'HR', 30000, 1),
(103, 'Amit', 'IT', 50000, 3),
(104, 'Neha', 'Sales', 35000, 2),
(105, 'Raj', 'HR', 45000, 4),
(106, 'Simran', 'IT', 60000, 5),
(107, 'Karan', 'Sales', 38000, 3),
(108, 'Pooja', 'Finance', 42000, 2),
(109, 'Arjun', 'Finance', 55000, 4),
(110, 'Sneha', 'HR', 32000, 1),
(111, 'Vikram', 'IT', 70000, 6),
(112, 'Anjali', 'Sales', 48000, 3),
(113, 'Rohan', 'Finance', 45000, 2),
(114, 'Meera', 'HR', 52000, 5),
(115, 'Dev', 'IT', 35000, 1);

-- 1. Display all employees
SELECT * FROM Employees;

-- 2. Display all employees names
SELECT EmployeeName FROM Employees;

-- Display all employees name and salary
SELECT EmployeeName, Salary FROM Employees;

-- Display only employees who belong to the IT department
SELECT EmployeeName, Department, Salary FROM Employees WHERE Department = 'IT';

-- Display employees whose salary is greater than ₹40,000
SELECT EmployeeName, Department, Salary FROM Employees WHERE salary > 40000;

-- Display all employees sorted by salary from highest to lowest
SELECT EmployeeName, Department, Salary FROM Employees ORDER BY Salary DESC;

-- Display the department-wise employee count
SELECT Department, COUNT(*) AS Total_Employees FROM Employees GROUP BY Department;

-- Display the average salary of each department
SELECT Department, AVG(Salary) AS Average_Salary FROM Employees GROUP BY Department;

-- Display the maximum salary in each department
SELECT Department, MAX(Salary) AS Maximum_Salary FROM Employees GROUP BY Department;

-- Display departments whose average salary is greater than ₹50,000
SELECT Department, AVG(Salary) AS Average_Salary FROM Employees GROUP BY Department HAVING AVG(Salary) > 50000;

-- Display the top 3 highest-paid employees
SELECT EmployeeName, Department, Salary FROM Employees ORDER BY Salary DESC limit 3;

-- Find the total salary paid to all employees
SELECT SUM(Salary) AS Total_Salary FROM Employees;

-- Find the lowest salary
SELECT MIN(Salary) AS Minimum_Salary FROM Employees;

-- Display unique department
SELECT DISTINCT Department FROM Employees;