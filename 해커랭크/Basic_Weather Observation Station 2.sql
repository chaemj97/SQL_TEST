-- 문제
-- The sum of all values in LAT_N rounded to a scale of  decimal places. The sum of all values in LONG_W rounded to a scale of  decimal places.
-- LAT_N의 합과 LONG_W의 합 출력
-- 반올림해서 소수 둘째짜리까지 나타내라

SELECT ROUND(SUM(LAT_N),2), ROUND(SUM(LONG_W),2)
FROM STATION;