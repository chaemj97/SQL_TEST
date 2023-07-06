-- https://chaemi720.tistory.com/329

-- 유지해야 하는 데이터
SELECT MIN(id) as min_id, email
FROM Person
GROUP BY email;

-- 위에서 id만 뽑아내기
SELECT sub.min_id
FROM (
    SELECT MIN(id) as min_id, email
    FROM Person
    GROUP BY email
) as sub;

-- 정답
-- 유지해야 하는 id에 해당하지 않는 행 삭제
DELETE 
FROM Person
WHERE id NOT IN (
    SELECT sub.min_id
    FROM (
        SELECT MIN(id) as min_id, eamil
        FROM Person
        GROUP BY email
    ) as sub
);

--------------------------------------------
DELETE p1
FROM Person p1
    INNER JOIN Person p2 ON p1.email = p2.email
WHERE p1.id > p2.id;