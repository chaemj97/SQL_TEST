-- 문제
-- Write a query to print the id, age, coins_needed, and power of the wands that Ron's interested in, sorted in order of descending power. If more than one wand has same power, sort the result in order of descending age.
-- LAT_N의 중앙값을 구하라
-- https://chaemi720.tistory.com/350

SELECT ROUND(AVG(LAT_N),4)
FROM (SELECT ROW_NUMBER() OVER (ORDER BY LAT_N) row_num
           , COUNT(*) OVER () n
           , LAT_N
      FROM STATION) t
WHERE CASE 
          WHEN MOD(n,2) = 1 THEN row_num = (n+1)/2
          ELSE row_num IN (n/2,(n/2)+1)
      END;

-- 윈도우 함수
SELECT ROUND(AVG(LAT_N),4)
FROM (SELECT LAT_N
           , PERCENT_RANK() OVER (ORDER BY LAT_N) p_rn
      FROM STATION) t
WHERE p_rn = 0.5;