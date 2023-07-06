-- 문제
-- Write an SQL query to swap all 'f' and 'm' values (i.e., change all 'f' values to 'm' and vice versa) with a single update statement and no intermediate temporary tables.
-- Note that you must write a single update statement, do not write any select statement for this problem.
-- SEX 컬럼에 f면 m으로 m이면 f로 바꿔라. 1문장으로
-- https://chaemi720.tistory.com/328

UPDATE SALARY 
SET SEX = CASE WHEN SEX = 'f' THEN 'm' ELSE 'f' END;