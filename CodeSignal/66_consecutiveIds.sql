CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	select id as oldId
		, rank() over(order by id) as newId
	from itemIds;
END