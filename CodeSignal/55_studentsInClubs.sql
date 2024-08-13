CREATE PROCEDURE solution()
    SELECT * FROM students
    WHERE EXISTS (
        select * from clubs where clubs.id = students.club_id
    )
    ORDER BY students.id;
