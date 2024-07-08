CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT *
	FROM PHONE_NUMBERS
	WHERE PHONE_NUMBER REGEXP '^(1-|\\(1\\))[0-9]{3}-[0-9]{3}-[0-9]{4}$'
	ORDER BY SURNAME;
END