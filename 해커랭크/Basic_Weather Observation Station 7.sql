-- 문제
-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
-- CITY 마지막 글자가 모음인 도시이름 출력

SELECT DISTINCT CITY
FROM STATION
WHERE RIGHT(CITY,1) IN ('A','E','I','O','U');

-- 정규표현식
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '.*[aeiou]$';