CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	select id
		, ifnull(country, 'unknown')
	from users u
	left join cities c
		on u.city = c.city;
END