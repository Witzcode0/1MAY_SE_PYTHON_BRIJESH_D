--  a view is a virtual table that is based on the result of a SQL query. Views do not store data themselves but display data that is retrieved from underlying tables. They are useful for simplifying complex queries, enhancing security by restricting access to specific columns or rows, and providing a level of abstraction from the underlying database schema.

Creating a View
The basic syntax for creating a view is:

CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;


CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
);


INSERT INTO employees (first_name, last_name, department, salary, hire_date) VALUES
('John', 'Doe', 'HR', 60000.00, '2021-03-15'),
('Jane', 'Smith', 'Finance', 75000.00, '2020-06-01'),
('Michael', 'Johnson', 'IT', 90000.00, '2019-09-23'),
('Patricia', 'Brown', 'Marketing', 65000.00, '2022-01-10'),
('Robert', 'Jones', 'IT', 85000.00, '2023-05-19'),
('Linda', 'Davis', 'Finance', 71000.00, '2021-04-22'),
('William', 'Garcia', 'HR', 63000.00, '2020-12-11'),
('Elizabeth', 'Miller', 'Marketing', 69000.00, '2019-11-30'),
('James', 'Wilson', 'IT', 92000.00, '2022-03-01'),
('Mary', 'Moore', 'Finance', 72000.00, '2018-07-14'),
('David', 'Taylor', 'Marketing', 68000.00, '2021-08-29'),
('Jennifer', 'Anderson', 'HR', 64000.00, '2023-02-17'),
('Richard', 'Thomas', 'IT', 91000.00, '2019-06-25'),
('Susan', 'Jackson', 'Finance', 76000.00, '2022-05-07'),
('Charles', 'White', 'Marketing', 67000.00, '2020-09-13'),
('Joseph', 'Harris', 'HR', 60000.00, '2018-11-21'),
('Karen', 'Martin', 'IT', 95000.00, '2021-10-05'),
('Thomas', 'Thompson', 'Finance', 70000.00, '2020-02-14'),
('Sarah', 'Martinez', 'Marketing', 67500.00, '2023-03-25'),
('Christopher', 'Robinson', 'IT', 87000.00, '2019-12-15'),
('Nancy', 'Clark', 'HR', 62000.00, '2022-08-18'),
('Daniel', 'Rodriguez', 'Finance', 74000.00, '2018-05-20'),
('Matthew', 'Lewis', 'IT', 93000.00, '2020-11-12'),
('Betty', 'Lee', 'Marketing', 68000.00, '2021-06-04'),
('Anthony', 'Walker', 'HR', 61000.00, '2019-03-08'),
('Sandra', 'Hall', 'Finance', 71500.00, '2022-07-30'),
('Mark', 'Allen', 'IT', 90500.00, '2023-01-22'),
('Donna', 'Young', 'Marketing', 65500.00, '2018-10-11'),
('Steven', 'Hernandez', 'HR', 62500.00, '2021-11-27'),
('Emily', 'King', 'Finance', 73500.00, '2020-04-09');


task-1 : create a view to display only the employees in the 'IT' department with their full names and salaries:

CREATE VIEW it_employees AS
SELECT 
    employee_id,
    CONCAT(first_name, ' ', last_name) AS full_name,
    salary
FROM employees
WHERE department = 'IT';


SELECT * FROM it_employees;


Updating Data Through Views

you can often update data through a view, provided certain conditions are met:

The view is based on a single table.
The view does not include aggregate functions, DISTINCT, GROUP BY, or HAVING.
The view does not use joins, subqueries, or unions.
The view includes all columns that are not nullable or have no default value.

UPDATE it_employees
SET salary = salary * 1.10
WHERE employee_id = 1;


Complex Views

CREATE VIEW avg_salary_by_dept AS
SELECT 
    department,
    AVG(salary) AS avg_salary
FROM employees
GROUP BY department;


select * from avg_salary_by_dept; 