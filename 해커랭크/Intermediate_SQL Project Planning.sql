-- 문제
-- Write a query to output the start and end dates of projects listed by the number of days it took to complete the project in ascending order. If there is more than one project that have the same number of completion days, then order by the start date of the project.
-- 프로젝트가 시작하는 날, 끝나는 날 출력
-- 기간이 짧은 순서대로, 시작하는 날이 빠른 순서대로

SELECT S.START_DATE
     , E.END_DATE
FROM (SELECT START_DATE
           , ROW_NUMBER() OVER (ORDER BY START_DATE) AS R
      FROM PROJECTS
      WHERE START_DATE NOT IN (SELECT END_DATE FROM PROJECTS)) AS S
INNER JOIN (SELECT END_DATE
                 , ROW_NUMBER() OVER (ORDER BY END_DATE) AS R
            FROM PROJECTS
            WHERE END_DATE NOT IN (SELECT START_DATE FROM PROJECTS)) AS E
ON S.R = E.R
ORDER BY (E.END_DATE - S.START_DATE), S.START_DATE;