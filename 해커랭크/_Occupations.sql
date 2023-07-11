-- 문제
-- write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.
-- https://chaemi720.tistory.com/348

SELECT C.company_code
     , C.founder
     , (SELECT COUNT(DISTINCT lead_manager_code)
        FROM Lead_Manager
        WHERE company_code = C.company_code) AS L_CNT
     , (SELECT COUNT(DISTINCT senior_manager_code)
        FROM Senior_Manager
        WHERE company_code = C.company_code) AS S_CNT
     , (SELECT COUNT(DISTINCT manager_code)
        FROM Manager
        WHERE company_code = C.company_code) AS M_CNT
     , (SELECT COUNT(DISTINCT employee_code)
        FROM Employee
        WHERE company_code = C.company_code) AS E_CNT

FROM Company AS C
ORDER BY C.company_code;