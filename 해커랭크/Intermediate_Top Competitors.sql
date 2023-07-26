-- 문제
-- full score를 받은 challenge의 개수가 1개보다 많은 사람 id,이름 출력하는 쿼리

SELECT S.hacker_id, H.name
FROM SUBMISSIONS AS S
    INNER JOIN CHALLENGES AS C ON S.challenge_id = C.challenge_id
    INNER JOIN DIFFICULTY AS D ON C.difficulty_level = D.difficulty_level
    INNER JOIN HACKERS AS H ON S.hacker_id = H.hacker_id
-- FULL SCORE
WHERE S.score = D.score
-- MORE THAN ONE CHALLENGE
GROUP BY S.hacker_id, H.name
HAVING COUNT(S.challenge_id) > 1
ORDER BY COUNT(S.challenge_id) DESC, H.hacker_id;