-- 문제
-- Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
-- CITY 마지막 글자가 모음이 아닌 도시이름 출력

SELECT DISTINCT CITY
FROM STATION
WHERE RIGHT(CITY,1) NOT IN ('A','E','I','O','U');