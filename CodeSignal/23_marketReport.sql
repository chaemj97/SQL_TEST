CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT COUNTRY
		, COUNT(DISTINCT competitor) AS competitors
	FROM foreignCompetitors
	GROUP BY COUNTRY

	
	UNION
	
	SELECT 'Total:' AS COUNTRY
		, COUNT(competitor) AS competitors
	FROM foreignCompetitors;
END
