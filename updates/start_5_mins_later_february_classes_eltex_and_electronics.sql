--В феврале все пары по электротехнике и электронике переносятся на 5 минут позже
ALTER TABLE class
DROP COLUMN IF EXISTS new_class_time;

ALTER TABLE class 
ADD new_class_time TIME;

UPDATE class
SET new_class_time = time::time + interval '00:05' minute
WHERE 
	date_part('month', date) = 2
	AND subject_name IN ('Электротехника','Электроника');
	

SELECT date, time,  new_class_time, class_type, subject_name 
FROM class
WHERE date_part('year', date) = 2023
		AND date_part('month', date) = 2
ORDER BY date;