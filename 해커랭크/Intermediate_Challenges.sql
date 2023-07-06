-- 문제
-- https://chaemi720.tistory.com/330

-- counter라는 가상 테이블 만들기
WITH counter AS (
    SELECT Hackers.hacker_id
         , Hackers.name
         , COUNT(*) AS challenges_created
    FROM Challenges
        INNER JOIN Hackers ON Challenges.hacker_id = Hackers.hacker_id
    GROUP BY Hackers.hacker_id, Hackers.name 
)

SELECT counter.hacker_id
     , counter.name
     , counter.challenges_created
FROM counter
WHERE challenges_created = (SELECT MAX(challenges_created) FROM counter)
OR challenges_created IN (SELECT challenges_created
                          FROM counter
                          GROUP BY challenges_created
                          HAVING COUNT(*) = 1)
ORDER BY counter.challenges_created DESC, counter.hacker_id;