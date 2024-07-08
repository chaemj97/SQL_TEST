CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT id
		, email_title
		, CASE	
			WHEN SIZE < POWER(2,20) THEN CONCAT(TRUNCATE(SIZE/power(2,10),0), ' Kb')
			ELSE CONCAT(TRUNCATE(SIZE/power(2,20),0), ' Mb')
		END AS short_size
	FROM EMAILS
	ORDER BY SIZE DESC;
END