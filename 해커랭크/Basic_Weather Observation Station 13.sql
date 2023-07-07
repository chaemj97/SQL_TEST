-- 문제
-- Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345. Truncate your answer to 4 decimal places.
-- LAT_N이 38.7880 초과, 137.2345 미만인 값의 합
-- 소수 4자리까지 나타내라

SELECT TRUNCATE(SUM(LAT_N),4)
FROM STATION
WHERE 38.7880 < LAT_N AND LAT_N < 137.2345;