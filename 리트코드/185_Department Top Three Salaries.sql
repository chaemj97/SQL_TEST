-- 문제
-- https://chaemi720.tistory.com/346


SELECT t.department
     , t.employee
     , t.salary
FROM (
    SELECT department.name AS department
         , employee.name AS employee
         , employee.salary
         , DENSE_RANK() OVER (PARTITION BY departmentId ORDER BY salary DESC) AS dr
    FROM employee
        INNER JOIN department ON employee.departmentId = department.id
) t
WHERE t.dr <= 3;
