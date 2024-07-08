CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
  -- 1.
	WITH RECENT_DAY AS (
		SELECT NAME
			, EVENT_DATE
			, MAX(EVENT_DATE) OVER() AS RECENT_DAY
		FROM EVENTS
		ORDER BY EVENT_DATE DESC
	)
	SELECT NAME
		, EVENT_DATE
	FROM RECENT_DAY
	WHERE DATEDIFF(RECENT_DAY, EVENT_DATE) BETWEEN 1 AND 7;
	
  -- 2.
  SET @recent = (SELECT MAX(event_date) FROM Events);
	SELECT name, event_date
    FROM Events
    WHERE DATEDIFF(@recent, event_date) <= 7
    AND event_date != @recent
    ORDER BY event_date DESC;
END