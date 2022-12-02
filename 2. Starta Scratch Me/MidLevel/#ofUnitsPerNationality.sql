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
-- I knew there was a easy way to solve the problem 
-- Inside count needs to be distinct 

SELECT  COUNT(distinct u.unit_id) , h.nationality 
FROM airbnb_units u
JOIN airbnb_hosts h ON u.host_id = h.host_id
WHERE h.age < 30 AND u.unit_type = 'Apartment'
group by h.nationality 
