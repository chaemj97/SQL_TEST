CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	set @a = concat(
					(select group_concat(concat('select "', query_name, '" query_name, (', code, ') val') separator ' union ')
					from queries)
					, ' order by 1'
	);
	
	prepare qry from @a;
	execute qry;
END