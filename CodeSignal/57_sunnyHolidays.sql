CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	select holiday_date as ski_date
	from holidays
	join weather
		on holidays.holiday_date = weather.sunny_date;
END