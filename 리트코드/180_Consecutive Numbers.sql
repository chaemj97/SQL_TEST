-- 문제
-- Write an SQL query to find all numbers that appear at least three times consecutively.
-- 연속으로 3개의 num이 같은 num을 출력
-- https://chaemi720.tistory.com/333

SELECT DISTINCT l1.num AS ConsecutiveNums
FROM Logs AS l1
    INNER JOIN Logs AS l2 ON l1.id + 1 = l2.id
    INNER JOIN Logs AS l3 ON l2.id + 1 = l3.id
WHERE l1.num = l2.num AND l2.num = l3.num;