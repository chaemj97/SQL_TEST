CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT name
FROM people_hobbies
WHERE hobbies LIKE '%sports%' AND hobbies LIKE '%reading%';
END