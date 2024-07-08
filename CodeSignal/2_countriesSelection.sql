CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	select *
	from countries
	where continent = 'Africa'
	order by name;
END