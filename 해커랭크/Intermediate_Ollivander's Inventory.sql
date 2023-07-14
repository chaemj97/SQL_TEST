-- 문제
-- Hermione decides the best way to choose is by determining the minimum number of gold galleons needed to buy each non-evil wand of high power and age.
-- Write a query to print the id, age, coins_needed, and power of the wands that Ron's interested in, sorted in order of descending power. If more than one wand has same power, sort the result in order of descending age.
-- non-evil이고 power와 age가 같다면 최소 coins_needed여야 한다.
-- id, age, coins_needed, power 출력
-- power 내림차순, age 내림차순

SELECT W.id, P.age, W.coins_needed, W.power
FROM (SELECT *
      FROM Wands
      -- 각각의 경우 가장 적은 coins_needed
      WHERE (code,power,coins_needed) IN (SELECT code, power, MIN(coins_needed)
                                          FROM Wands
                                          GROUP BY code, power)) AS W
INNER JOIN (SELECT code, age
            FROM Wands_Property
            WHERE is_evil = 0) AS P
ON W.code = P.code
ORDER BY W.power DESC, P.age DESC;

-- 윈도우 함수 사용
SELECT id, age, coins_needed,power
FROM (
    SELECT W.id
         , WP.age
         , W.power
         , W.coins_needed
         , ROW_NUMBER() OVER (PARTITION BY WP.age, W.power ORDER BY coins_needed) rn
    FROM Wands W
        INNER JOIN Wands_Property WP
            ON W.code = WP.code
    WHERE is_evil = 0
) t
WHERE t.rn = 1
ORDER BY power DESC, age DESC;