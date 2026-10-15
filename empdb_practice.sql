-- 1. Display all employee records.
SELECT * 
FROM Employees;

-- 2.Display only employee names.
SELECT name 
FROM Employees;

-- 3.Find employees whose salary is greater than 70000. 
SELECT * 
FROM Employees
WHERE salary > 70000;

-- 4.Find employees from the IT department.
SELECT * 
FROM Employees
WHERE department = 'IT';
