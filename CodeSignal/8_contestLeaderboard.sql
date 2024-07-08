CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT NAME
	FROM LEADERBOARD
	ORDER BY SCORE DESC
	LIMIT 3,5;
END