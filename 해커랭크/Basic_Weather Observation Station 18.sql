-- 문제
-- Query the Manhattan Distance between points P1 and P2 and round it to a scale of  decimal places.
-- P1과 P2의 맨하튼 거리 구하기
-- 4자리까지 반올림

SELECT ROUND(MAX(LAT_N) - MIN(LAT_N)+ MAX(LONG_W) - MIN(LONG_W), 4)
FROM STATION;
