use InVehicleCouponAnalysis;

-- Q1
-- reading the data
SELECT *
FROM dbo.[in-vehicle-coupon-recommendation];

-- Q2
-- extracting two columns
-- weather and temperature
SELECT weather, temperature
from dbo.[in-vehicle-coupon-recommendation];

-- Q3
-- extracting the top 10 rows
SELECT TOP 10
    *
from dbo.[in-vehicle-coupon-recommendation];

-- Q4
-- extracting unique values from 'passanger' column
SELECT DISTINCT passanger
from dbo.[in-vehicle-coupon-recommendation];

-- Q5
-- finding destination as "home"
-- from column "destination"
SELECT TOP 10
    *
from dbo.[in-vehicle-coupon-recommendation]
where destination = 'Home';

-- Q6
-- sort the data by 'coupon'
SELECT *
FROM dbo.[in-vehicle-coupon-recommendation]
ORDER BY coupon;

-- Q7
-- renaming column name 'destination' to 'Destination'
SELECT destination as Destination
from dbo.[in-vehicle-coupon-recommendation];

-- Q8
-- fiding occupation count
SELECT occupation, COUNT(*) as count
FROM dbo.[in-vehicle-coupon-recommendation]
GROUP by occupation
ORDER by count;

-- Q9
-- finding average temperature by weather condition
SELECT weather, AVG(temperature) as avg_temperature
from dbo.[in-vehicle-coupon-recommendation]
GROUP BY weather
ORDER by avg_temperature desc;

-- Q10
-- extract distinct temperature count
SELECT weather, COUNT(DISTINCT temperature) as dist_count_temp
FROM dbo.[in-vehicle-coupon-recommendation]
GROUP BY weather;

-- Q11
-- find maximum and minimum temperature
-- by weather condition: 'Rainy', 'Snowy', 'Sunny'

-- minimum temperature
SELECT weather, MIN(temperature) as min_temp
FROM dbo.[in-vehicle-coupon-recommendation]
GROUP BY weather
ORDER BY min_temp ASC;

-- maximum temperature
SELECT weather, MAX(temperature) as max_temp
FROM dbo.[in-vehicle-coupon-recommendation]
GROUP BY weather
ORDER BY max_temp DESC;

-- Q12
-- finding occupation from dataset
SELECT occupation, COUNT(occupation) as occup_count
FROM dbo.[in-vehicle-coupon-recommendation]
GROUP BY occupation
HAVING occupation = 'Student';