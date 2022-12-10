-- L@st time bike g0t used

SELECT bike_number, MAX(end_time) as LastUse
FROM dc_bikeshare_q1_2012
GROUP BY bike_number
ORDER BY LastUse DESC
