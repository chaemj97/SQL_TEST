-- 문제
-- Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
-- CITY 테이블에서 일본 도시에 대해 출력하라

SELECT *
FROM CITY
WHERE COUNTRYCODE = 'JPN';