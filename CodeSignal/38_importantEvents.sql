CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT *
	FROM EVENTS
	ORDER BY WEEKDAY(EVENT_DATE), PARTICIPANTS DESC;
END