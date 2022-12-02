-- F!nd th3 numb3r of apartm3nts p3r nationality that are owned by people under 30 years olD
-- Dec 1,2020
-- ID# 1(0)156]

-- Round 1
-- Need to read questions properly because I was missing apartments

WITH ageBelow30 AS (
    SELECT DISTINCT host_id, nationality
    FROM airbnb_hosts
    WHERE AGE < 30
)

SELECT count(*) AS county, u.country
FROM airbnb_units u 
JOIN ageBelow30 ab ON ab.host_id= u.host_id
WHERE unit_type = 'Apartment'
GROUP BY u.country
ORDER BY county DESC

-- Round 2
