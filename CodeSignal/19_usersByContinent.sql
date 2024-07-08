CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT CONTINENT
		, SUM(USERS) AS USERS
	FROM COUNTRIES
	GROUP BY CONTINENT
	ORDER BY USERS DESC;
END