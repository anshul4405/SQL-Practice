-- Students scoring above average
SELECT name, marks
FROM students
WHERE marks > (
    SELECT AVG(marks)
    FROM students
);


-- Student having highest marks
SELECT name, marks
FROM students
WHERE marks = (
    SELECT MAX(marks)
    FROM students
);


-- Student having lowest marks
SELECT name, marks
FROM students
WHERE marks = (
    SELECT MIN(marks)
    FROM students
);


-- Employees earning more than average salary
SELECT employee_name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);


-- Employees working in Computer Science department
SELECT employee_name
FROM employees
WHERE department_id = (
    SELECT department_id
    FROM departments
    WHERE department_name = 'Computer Science'
);
