-- 문제
-- Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score. If more than one hacker achieved the same total score, then sort the result by ascending hacker_id. Exclude all hackers with a total score of 0 from your result.
-- 각 유저별 전체 점수를 구하라
-- 같은 문제를 여러번 푼 경우 최대점수만 남기기
-- 전체 점수가 0인 유저는 출력x
-- 전체 점수 내림차순, 해커ID 오름차순

SELECT H.hacker_id, H.name, SUM(S.MAX_SCORE) AS TOTAL_SCORE
FROM Hackers as H
    INNER JOIN (SELECT hacker_id, MAX(score) AS MAX_SCORE
                FROM Submissions
                GROUP BY hacker_id, challenge_id
               ) AS S
        ON H.hacker_id = S.hacker_id
GROUP BY H.hacker_id, H.name
HAVING TOTAL_SCORE > 0
ORDER BY TOTAL_SCORE DESC, H.hacker_id;