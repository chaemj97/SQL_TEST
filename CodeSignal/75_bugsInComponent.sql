CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	select b_name.title
		, c_name.title
		, b.cnt
	from Bug as b_name
	join Component as c_name
	join (select *
			from BugComponent
			where bug_num in (select bug_num
								from BugComponent
								group by bug_num
								having count(*) > 1
			)
	) as a
	join (select component_id
				, count(*) as cnt
			from BugComponent
			group by component_id
	) as b
	on b_name.num = a.bug_num and c_name.id = a.component_id and c_name.id = b.component_id
	order by b.cnt desc;
			
END