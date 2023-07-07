-- 문제
-- Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345. Truncate your answer to 4 decimal places.
-- LAT_N값이 137.2345보다 작은 값 중 가장 큰 값을 나타내라
-- 소수 4자리까지 나타내라

SELECT TRUNCATE(MAX(LAT_N),4)
FROM STATION
WHERE LAT_N < 137.2345;