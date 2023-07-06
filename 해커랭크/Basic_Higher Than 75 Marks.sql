-- 문제
-- Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
-- 75점보다 높게 받은 학생 이름 출력
-- 각 이름의 마지막 3글자로 오름차순 정렬, ID 정렬

SELECT Name
FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(Name,3),ID;