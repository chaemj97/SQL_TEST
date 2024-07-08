CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT *
	FROM USERS
	WHERE ATTRIBUTE LIKE BINARY CONCAT('_%\%',first_name, '\_',second_name,'\%%')
	ORDER BY ATTRIBUTE;
END