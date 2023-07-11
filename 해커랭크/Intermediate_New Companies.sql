-- 문제
-- Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively
-- 직업별 사람들 이름을 피봇테이블로 만들자

SELECT MIN(CASE WHEN Occupation = 'Doctor' THEN Name ELSE NULL END)
     , MIN(CASE WHEN Occupation = 'Professor' THEN Name ELSE NULL END)
     , MIN(CASE WHEN Occupation = 'Singer' THEN Name ELSE NULL END)
     , MIN(CASE WHEN Occupation = 'Actor' THEN Name ELSE NULL END)
FROM (SELECT Occupation
            , Name
            , ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) AS R
      FROM OCCUPATIONS
) AS R_T
GROUP BY R;