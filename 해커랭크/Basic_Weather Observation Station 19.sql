-- 문제
-- Query the Euclidean Distance between points P1 and P2 and format your answer to display  decimal digits.
-- P1과 P2의 유클리디안 거리 구하기
-- 4자리까지 반올림

SELECT ROUND(SQRT(POWER(MAX(LAT_N) - MIN(LAT_N),2) + POWER(MAX(LONG_W) - MIN(LONG_W),2)),4)
FROM STATION;