-- 문제
-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
-- CITY 처음과 마지막 글자에 모음인 도시 이름 출력

SELECT DISTINCT CITY
FROM STATION
WHERE RIGHT(CITY,1) IN ('A','E','I','O','U') 
    AND LEFT(CITY,1) IN ('A','E','I','O','U');

-- 정규표현식
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[aeiou].*[aeiou]$';