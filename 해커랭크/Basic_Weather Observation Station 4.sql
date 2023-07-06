-- 문제
-- Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
-- CITY 컬럼의 총 행 수 - CITY 총 수

SELECT COUNT(CITY)-COUNT(DISTINCT(CITY))
FROM STATION;