WITH HistoricalAvg AS (
    -- 1. Calculate the long-term average annual rainfall (1901-2015) for each region.
    SELECT
        subdivision,
        ROUND(AVG(annual), 2) AS Avg_Historical_Rainfall
    FROM
        historical_rainfall
    GROUP BY
        subdivision
)
-- 2. Join the calculated average (HistoricalAvg) with the official normals (district_normals)
-- and calculate the final percentage deviation.
SELECT
    N.DISTRICT,
    N.STATE_UT_NAME,
    N.ANNUAL AS Official_Normal_Rainfall_mm,
    H.Avg_Historical_Rainfall,
    -- Calculate the absolute difference
    ROUND((H.Avg_Historical_Rainfall - N.ANNUAL), 2) AS Difference_mm,
    -- Calculate the percentage deviation: (New - Old) / Old * 100
    ROUND((H.Avg_Historical_Rainfall - N.ANNUAL) * 100 / N.ANNUAL, 2) AS Percent_Deviation
FROM
    district_normals N
JOIN
    HistoricalAvg H
ON
    -- Join condition: We use the state/UT name to link the district-level normals
    -- to the region-level historical data.
    -- We include a CLEANUP step (REPLACE) to handle minor data inconsistencies.
    REPLACE(H.subdivision, ' & NICOBAR ISLANDS', '') = REPLACE(N.STATE_UT_NAME, ' And NICOBAR ISLANDS', '')
ORDER BY
    Percent_Deviation DESC; -- Defining the CTE (The Calculation Phase)
WITH HISTORICAL_AVG AS(SELECT subdivision, ROUND(AVG(annual),2) AS Avg_Historical_Rainfall
FROM historical_rainfall
GROUP BY subdivision
)
SELECT N.district	,	
N.state_ut_name,
N.annual AS Official_Normal_Rainfall_mm,
AVG(H.annual) AS Avg_Historical_Rainfall,	
Avg_Historical_Rainfall-Official_Normal_Rainfall_mm AS Difference_mm	,
Difference_mm/Official_Normal_Rainfall_mm * 100 AS Percent_Deviation
FROM
    district_normals N -- Table of official data
INNER JOIN
    HistoricalAvg H    -- The temporary aggregated table
ON
    REPLACE(N.STATE_UT_NAME, ' AND ', ' & ') = REPLACE(H.subdivision, ' AND ', ' & ');