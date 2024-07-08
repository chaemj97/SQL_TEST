CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT ID, NAME, SURNAME
	FROM SUSPECT
	WHERE HEIGHT <= 170
		AND LEFT(NAME, 1) = 'B'
		AND SURNAME LIKE 'GRE_N'
	ORDER BY ID;
END