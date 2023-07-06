-- 문제
-- Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than  per month who have been employees for less than  months. Sort your result by ascending employee_id.
-- 10달 이하 근무자 중 2000이상 받는 근무자 이름 출력
-- employee_id로 정렬

SELECT name
FROM Employee
WHERE months < 10 AND salary >2000
ORDER BY employee_id;