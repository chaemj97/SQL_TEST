CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT ITEM_NAME, ITEM_TYPE, COUNT(*)
	FROM availableItems
	GROUP BY ITEM_NAME, ITEM_TYPE
	ORDER BY ITEM_TYPE, ITEM_NAME;
END