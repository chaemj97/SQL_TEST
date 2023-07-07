-- 문제
-- Query the average population of all cities in CITY where District is California.
-- California의 모든 도시 평균 인구수

SELECT AVG(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';
