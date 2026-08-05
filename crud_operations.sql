-- Insert a new student
INSERT INTO students
VALUES (106, 'Mohit', 20, 'BTech', 79.50, 'Delhi');


-- Update student marks
UPDATE students
SET marks = 84.00
WHERE student_id = 102;


-- Update student city
UPDATE students
SET city = 'Gurugram'
WHERE student_id = 106;


-- Delete a student
DELETE FROM students
WHERE student_id = 106;


-- Display final records
SELECT * FROM students;
