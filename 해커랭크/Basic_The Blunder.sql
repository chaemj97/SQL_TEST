-- 문제
-- Write a query calculating the amount of error (i.e.:actual - miscalculated  average monthly salaries), and round it up to the next integer.
-- 모든 근로자의 급여 평균을 잘못 구했다.
-- 모든 근로자의 급여 평균을 구하는데 0을 적는 것을 잊었다.
-- 실제 계산값 - 잘못된 계산값 차 구하기, 올림

SELECT CEILING(AVG(Salary) - AVG(REPLACE(Salary,'0','')))
FROM EMPLOYEES;