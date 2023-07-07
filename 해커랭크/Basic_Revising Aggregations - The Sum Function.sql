-- 문제
-- Query the total population of all cities in CITY where District is California.
-- California의 모든 도시 인구 수

SELECT SUM(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';