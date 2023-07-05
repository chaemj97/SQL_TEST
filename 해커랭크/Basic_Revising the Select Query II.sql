-- 문제
-- Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.
-- CITY 테이블에서 인구가 120000이 넘는 미국 도시의 NAME 필드를 출력하라

SELECT NAME
FROM CITY
WHERE POPULATION > 120000 AND COUNTRYCODE = 'USA';