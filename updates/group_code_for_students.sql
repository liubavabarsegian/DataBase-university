ALTER TABLE student
DROP COLUMN IF EXISTS group_code;

ALTER TABLE student 
ADD group_code varchar(15) ;

UPDATE student
SET group_code = CONCAT(department, '-', semester, group_number, degree);

SELECT name, group_code, department, semester, group_number, degree FROM student