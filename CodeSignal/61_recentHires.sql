CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	select name
	from (
		(select name, 1 as dep_id from pr_department order by date_joined desc limit 5)
		union ALL
		(select name, 2 as dep_id from it_department order by date_joined desc limit 5)
		union ALL
		(select name, 3 as dep_id from sales_department order by date_joined desc limit 5)
	) dep
	order by dep_id, name;
END