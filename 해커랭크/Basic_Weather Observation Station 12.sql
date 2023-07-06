-- 문제
-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
-- CITY 첫글자가 모음이 아니고 끝글자가 모음이 아닌 도시 이름 출력 

SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(CITY,1) NOT IN ('A','E','I','O','U')
AND RIGHT(CITY,1) NOT IN ('A','E','I','O','U');