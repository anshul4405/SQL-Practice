CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO departments
VALUES
(1, 'Computer Science'),
(2, 'Information Technology'),
(3, 'Management');


CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    salary DECIMAL(10,2),
    department_id INT,
    FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);


INSERT INTO employees
VALUES
(1, 'Aman', 45000, 1),
(2, 'Rohit', 50000, 1),
(3, 'Neha', 42000, 2),
(4, 'Karan', 38000, 3);


-- Inner Join
SELECT e.employee_name,
       e.salary,
       d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;


-- Left Join
SELECT d.department_name,
       e.employee_name
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id;


-- Employees from Computer Science department
SELECT e.employee_name, e.salary
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id
WHERE d.department_name = 'Computer Science';
