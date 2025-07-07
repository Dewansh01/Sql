-- Create a table for employee salary details
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

-- Insert dummy data into the employees table
INSERT INTO employees (emp_id, emp_name, department, salary) VALUES
(1, 'Dewansh', 'IT', 70000),
(2, 'Krishna', 'HR', 60000),
(3, 'Vedant', 'IT', 75000),
(4, 'Riya', 'Finance', 65000),
(5, 'Aarav', 'HR', 62000),
(6, 'Sneha', 'IT', 72000),
(7, 'Mehul', 'Finance', 67000),
(8, 'Isha', 'Marketing', 58000),
(9, 'Nikhil', 'Marketing', 60000),
(10, 'Palak', 'IT', 71000);

-- 1. Get total salary paid per department
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

-- 2. Get average salary per department
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;

-- 3. Get number of employees in each department
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;

-- 4. Get highest salary in each department
SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department;

-- 5. Get lowest salary in each department
SELECT department, MIN(salary) AS lowest_salary
FROM employees
GROUP BY department;
