USE EMP;

CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    department VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO Employees
(name, age, salary, department)
VALUES
('Alice', 25, 50000, 'HR'),
('Bob', 30, 70000, 'IT'),
('Charlie', 28, 60000, 'HR'),
('David', 35, 90000, 'Finance'),
('Eve', 25, 75000, 'IT');

SELECT * FROM Employees;

INSERT INTO Departments VALUES
(1, 'HR', 'Bangalore'),
(2, 'IT', 'Hyderabad'),
(3, 'Finance', 'Chennai'),
(4, 'Marketing', 'Mumbai');

-- 1. Display employees along with their department locations.(Inner Join)
SELECT e.name, e.salary, d.location
FROM Employees e
INNER JOIN Departments d
ON e.department = d.department;

-- 2.Display all employees and their department locations, including employees without a matching department.
SELECT e.name, e.department, d.location
FROM Employees e
LEFT JOIN Departments d
ON e.department = d.department;

-- 3. Display all departments and their employees, including departments without employees.
SELECT d.department, e.name
FROM Employees e
RIGHT JOIN Departments d
ON e.department = d.department;

-- 4. Employees earning above ₹60,000 with their department location
SELECT e.name, e.salary, d.location
FROM Employees e
INNER JOIN Departments d
ON e.department = d.department
WHERE e.salary > 60000;

-- 5. Employees working in Hyderabad
SELECT e.name, e.department, d.location
FROM Employees e
INNER JOIN Departments d
ON e.department = d.department
WHERE d.location = 'Hyderabad';

-- 6. Count employees in each department
SELECT d.department, COUNT(e.emp_id) AS total_employees
FROM Departments d
LEFT JOIN Employees e
ON d.department = e.department
GROUP BY d.department;

-- 7. Find departments that have no employees
SELECT d.department
FROM Departments d
LEFT JOIN Employees e
ON d.department = e.department
WHERE e.emp_id IS NULL;

-- 8 Find employees earning more than the average salary in their department
SELECT e.name, e.department, e.salary
FROM Employees e
JOIN (
    SELECT department, AVG(salary) AS avg_salary
    FROM Employees
    GROUP BY department
) a
ON e.department = a.department
WHERE e.salary > a.avg_salary;


