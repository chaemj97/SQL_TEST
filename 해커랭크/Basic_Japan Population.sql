-- 문제
-- Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
-- 일본의 인구 수

SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE = 'JPN';