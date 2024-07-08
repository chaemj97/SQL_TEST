CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT ROUND(EXP(SUM(LOG(LENGTH(CHARACTERS)))))
	FROM DISCS;
END