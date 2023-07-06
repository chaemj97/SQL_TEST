-- 문제
-- Find employees who have the highest salary in each of the departments. Return the result table in any order.
-- 각 부서마다 최고 급여를 받는 사람 (부서명, 이름, 급여) 출력

-- 각 부서마다 최고 급여
SELECT departmentId, MAX(salary)
FROM Employee 
GROUP BY departmentId;

-- 각 부서에 최고 급여를 받은 사람 
SELECT d.name as Department, e.name as Employee, e.salary as Salary
FROM Employee e
    INNER JOIN Department d ON e.departmentId = d.id
WHERE (departmentId, salary) IN (
    SELECT departmentId, MAX(salary)
    FROM Employee 
    GROUP BY departmentId
);