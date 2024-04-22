DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    salary DECIMAL(10, 2),
    department_id INT,
    hire_date DATE
);

INSERT INTO departments (id, name) VALUES (1, 'Engineering');
INSERT INTO departments (id, name) VALUES (2, 'Sales');
INSERT INTO departments (id, name) VALUES (3, 'Marketing');
INSERT INTO departments (id, name) VALUES (4, 'HR');

INSERT INTO employees (id, name, salary, department_id, hire_date) VALUES (1, 'Alice', 60000.00, 1, '2020-01-01');
INSERT INTO employees (id, name, salary, department_id, hire_date) VALUES (2, 'Bob', 70000.00, 1, '2020-01-15');
INSERT INTO employees (id, name, salary, department_id, hire_date) VALUES (3, 'Charlie', 80000.00, 2, '2020-02-01');
INSERT INTO employees (id, name, salary, department_id, hire_date) VALUES (4, 'Dave', 90000.00, 3, '2020-02-15');
INSERT INTO employees (id, name, salary, department_id, hire_date) VALUES (5, 'Eve', 100000.00, 4, '2020-03-01');

--Write a query to find the name and salary of the highest paid employee in each
--department. If there are multiple employees with the same highest salary, only return one.
SELECT * FROM departments;
SELECT * FROM employees;
SELECT e.name, e.salary, e.department_id
FROM employees e
INNER JOIN (
    SELECT department_id, MAX(salary) AS max_salary
    FROM employees
    GROUP BY department_id
) max_salaries
ON e.department_id = max_salaries.department_id
AND e.salary = max_salaries.max_salary;

--Write a query to find the name and hire date of the oldest employee in each department.
--If there are multiple employees with the same oldest hire date, only return one.
SELECT e.name, e.hire_date, e.department_id
FROM employees e
INNER JOIN (
    SELECT department_id, MIN(hire_date) AS min_hire_date
    FROM employees
    GROUP BY department_id
) oldest_hires
ON e.department_id = oldest_hires.department_id
AND e.hire_date = oldest_hires.min_hire_date;

--Write a query to find the name and salary of employees whose salary is greater than the
--average salary in their department.
SELECT e.name, e.salary, e.department_id
FROM employees e
INNER JOIN (
    SELECT department_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
) dept_avg_salary
ON e.department_id = dept_avg_salary.department_id
WHERE e.salary > dept_avg_salary.avg_salary;