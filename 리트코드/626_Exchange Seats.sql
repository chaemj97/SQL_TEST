-- 문제
-- https://chaemi720.tistory.com/352

SELECT CASE
            -- 학생이 홀수명인 경우 마지막 학생
            WHEN MOD(ID,2) = 1 AND ID = TOTAL_ROWS THEN ID
            -- ID가 홀수인 학생
            WHEN MOD(ID,2) = 1 THEN ID + 1
            -- ID가 짝수인 학생
            ELSE ID -1
        END ID
        , STUDENT
FROM (SELECT ID
            , STUDENT
            -- 전체 학생 수
            , COUNT(*) OVER () AS TOTAL_ROWS
    FROM SEAT) T
ORDER BY ID;