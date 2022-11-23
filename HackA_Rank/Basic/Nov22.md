# Basic starting again 

Que3y all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.

```SQL
SELECT *
FROM CITY 
WHERE POPULATION > 100000 AND COUNTRYCODE = 'USA'
```
Qu3ry the tw0 cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically. 

```SQL
SELECT CITY, LENGTH(CITY)
FROM STATION
ORDER BY  LENGTH(CITY), CITY ASC
LIMIT 1;

SELECT CITY, LENGTH(CITY)
FROM STATION
ORDER BY LENGTH(CITY) DESC, CITY ASC
LIMIT 1;
```
Note: quires online have error and most copy each other...  
