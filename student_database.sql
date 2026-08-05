CREATE DATABASE college_db;

USE college_db;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT,
    course VARCHAR(30),
    marks DECIMAL(5,2),
    city VARCHAR(30)
);

INSERT INTO students
VALUES
(101, 'Aman', 20, 'BCA', 82.50, 'Delhi'),
(102, 'Rohit', 21, 'BTech', 76.00, 'Faridabad'),
(103, 'Neha', 20, 'BTech', 91.50, 'Gurugram'),
(104, 'Karan', 22, 'BCA', 68.00, 'Delhi'),
(105, 'Priya', 21, 'BTech', 88.00, 'Noida');

SELECT * FROM students;
