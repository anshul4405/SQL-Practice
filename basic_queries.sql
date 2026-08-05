-- Display all students
SELECT * FROM students;

-- Display student names and marks
SELECT name, marks
FROM students;

-- Students having marks greater than 80
SELECT *
FROM students
WHERE marks > 80;

-- Students from Delhi
SELECT *
FROM students
WHERE city = 'Delhi';

-- BTech students
SELECT *
FROM students
WHERE course = 'BTech';

-- Students with marks between 70 and 90
SELECT *
FROM students
WHERE marks BETWEEN 70 AND 90;

-- Sort students according to marks
SELECT *
FROM students
ORDER BY marks DESC;

-- Students whose name starts with A
SELECT *
FROM students
WHERE name LIKE 'A%';

-- Students from selected cities
SELECT *
FROM students
WHERE city IN ('Delhi', 'Noida');

-- Top three students according to marks
SELECT *
FROM students
ORDER BY marks DESC
LIMIT 3;
