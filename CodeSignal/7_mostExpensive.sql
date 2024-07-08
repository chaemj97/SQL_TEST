CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT NAME
	FROM PRODUCTS
	ORDER BY PRICE*QUANTITY DESC, NAME
	LIMIT 1;
END