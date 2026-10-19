-- Review the table
SELECT *
FROM nomnom
LIMIT 10;

-- Review unique neighborhoods
SELECT DISTINCT neighborhood
FROM nomnom;

-- Review unique cuisines
SELECT DISTINCT cuisine
FROM nomnom;

-- Select Chinese restaurants
SELECT *
FROM nomnom
WHERE cuisine = 'Chinese';

-- Select highly rated restaurants
SELECT *
FROM nomnom
WHERE review > 4;

-- Select fancy dinner options: Italian cuisine with $$$ price
SELECT *
FROM nomnom
WHERE cuisine = 'Italian'
  AND price = '$$$';

-- Use LIKE to find restaurants with "meatball" in the name
SELECT *
FROM nomnom
WHERE name LIKE '%meatball%';

-- Select restaurants in specific neighborhoods
SELECT *
FROM nomnom
WHERE neighborhood = 'Midtown'
   OR neighborhood = 'Downtown'
   OR neighborhood = 'Chinatown';

-- Select restaurants with pending health reports
SELECT *
FROM nomnom
WHERE health IS NULL;

-- Select the top 10 restaurants by review
SELECT *
FROM nomnom
ORDER BY review DESC
LIMIT 10;

-- Use CASE to make ratings more readable
SELECT name,
  CASE
    WHEN review > 4.5 THEN 'Extraordinary'
    WHEN review > 4 THEN 'Excellent'
    WHEN review > 3 THEN 'Good'
    WHEN review > 2 THEN 'Fair'
    ELSE 'Poor'
  END AS 'Text Rating'
FROM nomnom;