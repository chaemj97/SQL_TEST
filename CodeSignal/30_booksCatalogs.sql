CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT EXTRACTVALUE(XML_DOC, '/catalog/book[1]/author') AS author
	FROM CATALOGS
	order by author;
END