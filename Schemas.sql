-- Table 1: Historical Time Series Data (1901-2015)

CREATE TABLE historical_rainfall(
subdivision varchar(20),
year int,
jan decimal(10,2),
feb decimal(10,2),
mar decimal(10,2),
apr decimal(10,2),
may decimal(10,2),
jun decimal(10,2),
jul decimal(10,2),
aug decimal(10,2),
sep decimal(10,2),
oct decimal(10,2),
nov decimal(10,2),
dece decimal(10,2),
annual DECIMAL(10, 2),
jan_feb DECIMAL(10, 2),
mar_may DECIMAL(10, 2),
jun_sep DECIMAL(10, 2),
oct_dec DECIMAL(10, 2)
);


-- Table 2: District-wise Normals (Averages) Data

CREATE TABLE district_normals (
state_ut_name varchar(20),
district VARCHAR(100),
jan DECIMAL(10, 2),
feb DECIMAL(10, 2),
mar DECIMAL(10, 2),
apr DECIMAL(10, 2),
may DECIMAL(10, 2),
jun DECIMAL(10, 2),
jul DECIMAL(10, 2),
aug DECIMAL(10, 2),
sep DECIMAL(10, 2),
oct DECIMAL(10, 2),
nov DECIMAL(10, 2),
dece DECIMAL(10, 2),
annual DECIMAL(10, 2),
jan_feb DECIMAL(10, 2),
mar_may DECIMAL(10, 2),
jun_sep DECIMAL(10, 2),
oct_dec DECIMAL(10, 2)
);





