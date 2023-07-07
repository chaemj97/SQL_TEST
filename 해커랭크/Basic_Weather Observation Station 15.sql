-- 문제
-- Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345. Round your answer to 4 decimal places.
-- LAT_N이 137.2345보다 작은 것 중가장 큰 LAT_N의 LONG_W을 출력하라
-- 반올림하여 4자리까지 나타내라

SELECT ROUND(LONG_w,4)
FROM STATION
WHERE LAT_N = (SELECT MAX(LAT_N)
               FROM STATION
               WHERE LAT_N < 137.2345);