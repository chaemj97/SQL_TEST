CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	select id
		, column_name
		, value
	from (
		select id
			, 'name' as column_name
			, name as value
		from workers_info
		where name is not null
		
		union all
		
		select id
			, 'date_of_birth' as column_name
			, date_of_birth as value
		from workers_info
		where date_of_birth is not null
		
		union all
		
		select id
			, 'salary' as column_name
			, salary as value
		from workers_info
		where salary is not null
	) as notnull_info
	order by id, field(column_name, 'name', 'date_of_birth', 'salary');
END