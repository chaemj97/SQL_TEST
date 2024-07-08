CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT STR_TO_DATE(DATE_STR, '%Y-%m-%d') AS DATE_ISO
	FROM DOCUMENTS
	ORDER BY ID;
END