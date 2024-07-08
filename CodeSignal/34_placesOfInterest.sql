CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT COUNTRY
		, SUM(CASE WHEN leisure_activity_type='Adventure park' THEN number_of_places ELSE 0 END) AS adventure_park	
		, SUM(CASE WHEN leisure_activity_type='Golf' THEN number_of_places ELSE 0 END) AS	Golf	
		, SUM(CASE WHEN leisure_activity_type='River cruise' THEN number_of_places ELSE 0 END) AS River_cruise	
		, SUM(CASE WHEN leisure_activity_type='Kart racing' THEN number_of_places ELSE 0 END) AS Kart_racing
	FROM countryActivities
	GROUP BY COUNTRY
	ORDER BY COUNTRY;
END