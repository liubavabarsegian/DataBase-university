SELECT 
	c.subject_name, c.class_type, c.group_code, p.professor_name
FROM 
	class c, professor as p
WHERE
	c.professor_id = p.id
	AND p.professor_name = 'Константинов М.Ю.'
	