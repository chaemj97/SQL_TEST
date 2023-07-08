-- 문제
-- Find the nth highest salary from the Employee table. If there is no nth highest salary, return null.
-- n번째로 높은 급여를 출력하라. 없으면 NULL 출력

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
        SELECT IF(COUNT(sub.salary) < N, NULL, MIN(sub.salary))
        FROM (
            SELECT DISTINCT salary
            FROM Employee
            ORDER BY salary DESC
            LIMIT N
        ) AS sub
  );
END