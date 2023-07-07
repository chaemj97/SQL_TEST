-- 문제
-- Query a count of the number of cities in CITY having a Population larger than 100,000.
-- 인구가 100,000이 넘는 도시 수

SELECT COUNT(*)
FROM CITY
WHERE POPULATION > 100000;