CREATE DATABASE EMP;
USE EMP;

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age TINYINT CHECK (age >= 18),
    salary DECIMAL(10,2) NOT NULL,
    department VARCHAR(50) NOT NULL DEFAULT 'HR',
    
    CONSTRAINT chk_salary CHECK (salary >= 10000)
);

/*
PRIMARY KEY → Unique + Not NULL + One per table
NOT NULL → Value is mandatory
UNIQUE → No duplicate values
DEFAULT → Uses a default value if omitted. (precision,scale) totaldigits 10, before point 8 ,after 2 -> ex : 12345678.90
CHECK → Validates a condition
AUTO_INCREMENT → Generates IDs automatically
UNSIGNED → No negative numbers
*/

/*
Naming a constraint makes it easier to identify and manage. 
If the constraint fails or needs to be dropped later, 
I can refer to it by name instead of relying on a system-generated name.
*/


INSERT INTO Employees
(name, age, salary, department)
VALUES
('Alice', 25, 50000, 'HR'),
('Bob', 30, 70000, 'IT'),
('Charlie', 28, 60000, 'HR'),
('David', 35, 90000, 'Finance'),
('Eve', 25, 75000, 'IT');
