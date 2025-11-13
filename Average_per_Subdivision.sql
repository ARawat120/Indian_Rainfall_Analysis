-- Calculate Average Annual Rainfall per Subdivision
SELECT AVG(annual),subdivision FROM historical_rainfall
WHERE year  between 1901 and 2015
GROUP BY subdivision;