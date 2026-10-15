### Medium Questions Practice..

-- 1.Find the highest salary in the company.
SELECT name,salary
FROM Employees
WHERE salary = (SELECT MAX(salary) FROM Employees);

-- 2.Find the lowest salary in the company.
SELECT name,salary
FROM Employees
WHERE salary = (SELECT MIN(salary) FROM Employees);

-- 3.Find the average salary of all employees.
SELECT AVG(salary) AS Average_Salary
FROM Employees;

-- 4. Find the total salary paid to all employees.
SELECT SUM(salary) as Total_salary
FROM Employees;

-- 5. Count the total number of employees.
SELECT COUNT(emp_id) as Total_Employees
FROM Employees;

-- 6. Count how many employees are working in each department.
SELECT department,COUNT(emp_id) as employee_count
From Employees
GROUP BY department;

-- 7. Find the average salary for each department.
SELECT department, AVG(salary) AS Average_Salary
FROM Employees
GROUP BY department;

-- 8. Find the highest salary in each department.
SELECT department, MAX(salary) AS highest_salary
FROM Employees
GROUP BY department;

-- 9. Display departments where the average salary is greater than 60000
SELECT department, AVG(salary) AS average_salary
FROM Employees
GROUP BY department
HAVING AVG(salary) > 60000;

-- 10. Find the department with the highest total salary.
SELECT department, MAX(salary) AS max_salary
FROM Employees
GROUP BY department
ORDER BY max_salary desc
LIMIT 1;