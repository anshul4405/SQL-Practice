-- Total number of students
SELECT COUNT(*) AS total_students
FROM students;


-- Average marks
SELECT AVG(marks) AS average_marks
FROM students;


-- Highest marks
SELECT MAX(marks) AS highest_marks
FROM students;


-- Lowest marks
SELECT MIN(marks) AS lowest_marks
FROM students;


-- Number of students in each course
SELECT course, COUNT(*) AS total_students
FROM students
GROUP BY course;


-- Average marks for each course
SELECT course, AVG(marks) AS average_marks
FROM students
GROUP BY course;


-- Courses having average marks greater than 75
SELECT course, AVG(marks) AS average_marks
FROM students
GROUP BY course
HAVING AVG(marks) > 75;
