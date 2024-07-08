CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT CASE
				WHEN GENDER = 'F' THEN CONCAT('Queen ',NAME) 
				ELSE CONCAT('King ', NAME)
			END AS name
	FROM SUCCESSORS
	ORDER BY BIRTHDAY;
	
END