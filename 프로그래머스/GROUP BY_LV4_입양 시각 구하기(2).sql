-- 문제
-- 보호소에서는 몇 시에 입양이 가장 활발하게 일어나는지 알아보려 합니다. 0시부터 23시까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성해주세요. 이때 결과는 시간대 순으로 정렬해야 합니다.

-- 시간 0~23 테이블 만들기
WITH RECURSIVE TIME_HOUR AS (
    SELECT 0 AS H
    UNION
    SELECT H+1 FROM TIME_HOUR WHERE H < 23
)

SELECT T.H, COUNT(ANIMAL_ID)
FROM TIME_HOUR AS T
    LEFT JOIN ANIMAL_OUTS AS O
        ON T.H = HOUR(O.DATETIME)
GROUP BY T.H;

