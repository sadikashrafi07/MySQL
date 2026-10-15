## Hard Questions Practice

-- 1. Find the second-highest salary.
SELECT MAX(salary)
FROM Employees
WHERE salary < (SELECT MAX(salary) FROM Employees);

-- 2. Find the employee(s) who receive the second-highest salary.
SELECT name,salary
FROM Employees
WHERE salary = (
SELECT MAX(salary)
FROM Employees
WHERE salary < (SELECT MAX(salary) FROM Employees)
);


-- 3. Find the third-highest salary.
SELECT name,salary
FROM Employees
ORDER BY salary DESC
LIMIT 1
OFFSET 2;

-- 4. Find the employee(s) who have the highest salary in each department.
SELECT name, department,salary
FROM Employees as e
WHERE salary = (
	SELECT MAX(salary)
    FROM EMPLOYEES
    WHERE department = e.department
);

-- 5. Find employees whose salary is greater than the average salary of all employees.
SELECT name,salary
FROM Employees
WHERE salary > (
	SELECT AVG(salary)
    From Employees
);

-- 6. Find employees whose salary is greater than the average salary of their own department.
SELECT name,salary,department
FROM Employees as e
WHERE salary > (
	SELECT AVG(salary) 
    FROM Employees
    WHERE department = e.department
);

-- 7. Find the department that has the highest average salary
SELECT department, AVG(salary) AS average_salary
FROM Employees
GROUP BY department
ORDER BY average_salary DESC
LIMIT 1;

-- or 

SELECT department, AVG(salary) AS average_salary
FROM Employees
GROUP BY department
HAVING AVG(salary) = (
    SELECT MAX(avg_salary)
    FROM (
        SELECT AVG(salary) AS avg_salary
        FROM Employees
        GROUP BY department
    ) AS dept_avg
);
# GROUP BY columns don't have to be displayed. But non-aggregated columns that you DO display generally must be in GROUP BY.

-- 8. Find the second-highest salary in each department.
SELECT name, department, salary
FROM Employees e
WHERE salary = (
    SELECT MAX(salary)
    FROM Employees
    WHERE department = e.department
      AND salary < (
          SELECT MAX(salary)
          FROM Employees
          WHERE department = e.department
      )
);

-- 9. Find employees who have the same salary as another employee.
SELECT name,salary
FROM Employees as e
WHERE salary = (
	SELECT salary
    FROM Employees
    WHERE salary = e.salary
	AND emp_id <> e.emp_id
);

-- or

SELECT name, salary
FROM Employees
WHERE salary IN (
    SELECT salary
    FROM Employees
    GROUP BY salary
    HAVING COUNT(*) > 1
);

-- 10. Find the department with the highest total salary.

SELECT department, SUM(salary) AS total_salary
FROM Employees
GROUP BY department
ORDER BY total_salary DESC
LIMIT 1;

-- or

SELECT department, SUM(salary) AS total_salary
FROM Employees
GROUP BY department
HAVING SUM(salary) = (
    SELECT MAX(total_salary)
    FROM (
        SELECT SUM(salary) AS total_salary
        FROM Employees
        GROUP BY department
    ) AS dept_totals
);


SELECT * FROM EMPLOYEES