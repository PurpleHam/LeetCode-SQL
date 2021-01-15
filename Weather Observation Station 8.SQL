-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and 
-- last characters. Your result cannot contain duplicates.

SELECT DISTINCT 
    CITY
FROM 
    STATION
WHERE 
    REGEXP_LIKE(City, '^[AEIOU].*[aeiou]$');


-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. 
-- Your result cannot contain duplicates.

SELECT DISTINCT 
    CITY 
FROM 
    STATION 
WHERE 
    CITY NOT REGEXP '^[AEIOU]' OR CITY NOT REGEXP '[AEIOU]$';
