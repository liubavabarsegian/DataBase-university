SELECT 
	CONCAT(department, '-', semester, group_number, degree) as group_code,
	SUM(scholarship)
FROM student
GROUP BY group_code
HAVING SUM(scholarship) > 20000
