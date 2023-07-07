-- 문제
-- Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780. Round your answer to 4 decimal places.
-- LAT_N이 38.7780보다 큰 것 중 가장 작은 LAT_N을 가지는 LONG_W 출력하라
-- 반올림하여 4자리까지 나타내라

SELECT ROUND(LONG_W,4)
FROM STATION
WHERE LAT_N = (SELECT MIN(LAT_N)
               FROM STATION
               WHERE LAT_N > 38.7780);