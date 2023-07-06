-- 문제
-- We define an employee's total earnings to be their monthly  worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as  space-separated integers.
-- 가장 높은 연봉 금액과 그 연봉을 받는 사람 수 구하기


-- 가장 높은 연봉
SELECT MAX(months*salary)
FROM Employee;

-- 1. WHERE절 사용
-- 가장 높은 연봉과 그 연봉 받는 사람 수
SELECT (months*salary) AS total, COUNT(*)
FROM Employee
WHERE months*salary = (
    SELECT MAX(months*salary)
    FROM Employee
)
GROUP BY total;

-- 2. HAVING절 사용
SELECT (months*salary) AS total, COUNT(*)
FROM Employee
GROUP BY total
HAVING total = (
    SELECT MAX(months*salary)
    FROM Employee
);