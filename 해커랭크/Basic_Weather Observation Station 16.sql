-- 문제
-- Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. Round your answer to 4 decimal places.
-- LAT_N이 38.7780보다 큰 것 중 가장 작은 LAT_N의 값 출력하라
-- 반올림하여 4자리까지 나타내라

SELECT ROUND(MIN(LAT_N),4)
FROM STATION
WHERE LAT_N > 38.7780;