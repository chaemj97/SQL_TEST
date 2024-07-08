CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT ID, NAME, SURNAME
	FROM SUSPECT
	WHERE HEIGHT <= 170
		OR NAME NOT LIKE 'B%'
		OR SURNAME NOT LIKE 'GRE_N'
	ORDER BY ID;
END