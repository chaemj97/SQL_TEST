-- 문제
-- Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:
-- 어떤 삼각형인지 출력하라. 삼각형이 아닌 경우도 있다.

SELECT 
    CASE WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle' 
         WHEN A = B AND B = C THEN 'Equilateral'
         WHEN A = B OR B = C OR A = C THEN 'Isosceles'
         ELSE 'Scalene'
    END
FROM TRIANGLES;