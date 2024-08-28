CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT distinct c.table_name as tab_name
		, c.column_name as col_name
		, c.data_type as data_type
	FROM information_schema.tables as t
	join information_schema.columns as c 
	on t.table_name = c.table_name
	where c.table_schema = 'ri_db' and t.table_name like 'e%s'
	order by tab_name, col_name;
END