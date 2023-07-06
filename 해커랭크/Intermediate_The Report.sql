-- 문제
-- https://chaemi720.tistory.com/332

SELECT *
FROM Students AS s
    INNER JOIN Grades AS g ON s.Marks BETWEEN g.Min_Mark AND g.Max_Mark;

-- 정답
SELECT CASE WHEN g.Grade >= 8 THEN s.Name ELSE Null END
        , g.Grade
        , s.Marks
FROM Students AS s
    INNER JOIN Grades AS g ON s.Marks BETWEEN g.Min_Mark AND g.Max_Mark
ORDER BY g.Grade DESC, s.Name, s.Marks;