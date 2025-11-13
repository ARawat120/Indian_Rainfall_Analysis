-- Find the Wettest years
SELECT 
year AS 'WETEST_YEAR',annual AS 'EXTREAM_RAIN(mm)' 
FROM historical_rainfall 
ORDER BY annual DESC 
LIMIT 1;