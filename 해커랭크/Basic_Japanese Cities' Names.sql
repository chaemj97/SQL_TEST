-- 문제
-- Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
-- CITY 테이블에서 일본 도시 이름을 출력하라

SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'JPN';