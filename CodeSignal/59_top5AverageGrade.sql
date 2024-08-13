CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	select round(avg(grade),2) as average_grade
	from (select grade
		from students
		order by grade DESC
		limit 5) g;
END