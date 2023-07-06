-- 문제
-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
-- CITY 첫글자가 모음이 아니거나 끝글자가 모음이 아닌 도시 이름 출력 

SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(CITY,1) NOT IN ('A','E','I','O','U')
OR RIGHT(CITY,1) NOT IN ('A','E','I','O','U');