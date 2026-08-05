-- Second highest marks
SELECT MAX(marks) AS second_highest_marks
FROM students
WHERE marks < (
    SELECT MAX(marks)
    FROM students
);


-- Students with marks greater than average
SELECT name, marks
FROM students
WHERE marks > (
    SELECT AVG(marks)
    FROM students
)
ORDER BY marks DESC;


-- Count students according to city
SELECT city, COUNT(*) AS total_students
FROM students
GROUP BY city;


-- Course with highest average marks
SELECT course, AVG(marks) AS average_marks
FROM students
GROUP BY course
ORDER BY average_marks DESC
LIMIT 1;


-- Students whose name contains the letter 'a'
SELECT *
FROM students
WHERE name LIKE '%a%';


-- Employees earning more than 40000
SELECT employee_name, salary
FROM employees
WHERE salary > 40000
ORDER BY salary DESC;
