-- 문제
-- Query the average population for all cities in CITY, rounded down to the nearest integer.
-- 모든 도시의 평균 인구수, 내림

SELECT FLOOR(AVG(POPULATION))
FROM CITY;