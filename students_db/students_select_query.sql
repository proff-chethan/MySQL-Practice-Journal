-- For basic understanding please refer to https://medium.com/@proff.chethan/essential-mysql-exploring-select-queries-38c089a2aa09

USE students_db;

-- General SELECT statements
SELECT * FROM students;

SELECT roll_no FROM students;

SELECT student_name, class_level, class_section FROM students;

SELECT student_name, CONCAT(class_level, class_section) FROM students;

SELECT student_name, CONCAT(class_level, class_section) AS class FROM students;

-- FILTER using WHERE clause
SELECT * FROM students WHERE percentage >= 35;

SELECT student_name, (CASE WHEN percentage >= 35 THEN CONCAT('PASS with ', result_grade)  ELSE 'FAIL' END) AS result  FROM students;

SELECT MAX(percentage) FROM students;
SELECT MIN(percentage) FROM students;

SELECT COUNT(roll_no) FROM students;

SELECT * FROM students WHERE percentage >= 35;

SELECT class_level, class_section, COUNT(student_name) FROM students GROUP BY class_level, class_section;

SELECT class_level, class_section, COUNT(student_name) FROM students GROUP BY class_level, class_section HAVING COUNT(student_name) > 20;

SELECT class_level, class_section, COUNT(student_name) FROM students GROUP BY class_level, class_section ORDER BY class_level, class_section ASC;