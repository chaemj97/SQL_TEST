CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	select id, scholarship/12
	from scholarships
	order by id;
END