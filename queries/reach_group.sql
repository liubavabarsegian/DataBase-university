SELECT 
	CONCAT(department, '-', semester, group_number, degree) as gr_code,
	SUM(scholarship)
FROM student
GROUP BY gr_code
HAVING SUM(scholarship) > 20000
