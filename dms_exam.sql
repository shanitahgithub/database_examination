--dms_exam
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    id INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Address VARCHAR(150)
   
);

-- Inserting data into the table
INSERT INTO employees ( id,Name, Age,Address)
VALUES
(1001, 'Rohan',26,'Delhi'),
(1002, 'Ankit', 30, 'Gurgaon'),
(1003, 'Gurav',27, 'Mumbai'),
(1004, 'Raja',32,'Nagpur');
SELECT * FROM employees;

--employee with id 1004
SELECT * FROM employees WHERE id = 1004;

--Display all the records table empoyees
SELECT * FROM employees;

--employee whose name starts with R
SELECT * FROM employees WHERE Name LIKE 'R%';

--employees with their age in ascending and descending order
SELECT id, Age, Name FROM employees ORDER BY Age ASC; -- Ascending order by age

SELECT id, Age, Name FROM employees ORDER BY Age DESC; -- Descending order by age

--selecting different addresses of employees
SELECT DISTINCT Address FROM employees;
--