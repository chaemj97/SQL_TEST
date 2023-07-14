-- 문제
-- Find the rank of the scores.
-- 동점자를 고려하여 등수를 매겨라, 없는 등수x

SELECT SCORE
     , DENSE_RANK() OVER (ORDER BY SCORE DESC) AS 'rank'
FROM SCORES;