-- 문제
-- Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
-- CITY 테이블에서 인구수가 100000보다 많은 미국 도시를 출력하라

SELECT *
FROM CITY
WHERE POPULATION > 100000 AND COUNTRYCODE = 'USA';