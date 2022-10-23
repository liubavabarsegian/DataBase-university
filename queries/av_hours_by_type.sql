SELECT check_type, ROUND(AVG(hours_number),2) as av_hours
FROM subject
GROUP BY check_type