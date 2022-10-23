SELECT name, department, group_number, degree, semester,
	CONCAT(department, '-', semester, group_number, degree) as group_code,
	CEILING(semester * 1.0 / 2) as year
FROM "student" 