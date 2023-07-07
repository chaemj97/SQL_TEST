-- 문제
-- Query the difference between the maximum and minimum populations in CITY.
-- 인구수 최댓값 - 최솟값

SELECT MAX(POPULATION) - MIN(POPULATION)
FROM CITY;