-- For basic understanding please refer to https://medium.com/@proff.chethan/essential-mysql-exploring-select-queries-38c089a2aa09

USE students_db;

SELECT * FROM students;

SELECT * FROM students WHERE percentage >= 35;

SELECT Count(result_grade) FROM students WHERE result_grade = "Pass";

SELECT class_level, class_section, COUNT(student_name) FROM students GROUP BY class_level, class_section;

SELECT class_level, class_section, COUNT(student_name) FROM students GROUP BY class_level, class_section HAVING COUNT(student_name) > 20;

SELECT class_level, class_section, COUNT(student_name) FROM students GROUP BY class_level, class_section ORDER BY class_level, class_section ASC;