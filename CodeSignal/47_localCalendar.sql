CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT event_id,
	DATE_FORMAT(DATE_ADD(e.date, INTERVAL s.timeshift MINUTE), IF(s.hours = 24, "%Y-%m-%d %H:%i", "%Y-%m-%d %h:%i %p")) AS formatted_date
	FROM events AS e, settings AS s
	WHERE e.user_id=s.user_id
	ORDER BY e.event_id;
END