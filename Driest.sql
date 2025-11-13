-- Find the  Driest Years
SELECT 
year AS 'DRIEST_YEAR',annual AS 'MIN_RAIN(mm)' 
FROM
historical_rainfall 
ORDER BY annual ASC 
LIMIT 1;
