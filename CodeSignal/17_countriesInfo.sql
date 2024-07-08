CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT COUNT(*)
		, AVG(POPULATION) AS AVERAGE
		, SUM(POPULATION) AS TOTAL
	FROM COUNTRIES;
END