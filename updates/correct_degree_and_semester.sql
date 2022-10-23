UPDATE 
	"group"
SET 
	degree = CASE
			WHEN RIGHT(group_code, 1) = 'М' THEN 'Магистратура'
			ELSE 'Бакалавриат'
			END;
UPDATE 
	"group"
SET 
	semester = CAST(substring(group_code from '-(.)' ) as INT);
SELECT * FROM "group"