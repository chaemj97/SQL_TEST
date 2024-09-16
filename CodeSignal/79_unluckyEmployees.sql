CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	set @rn = 0;
	select dep_name
		, emp_number
		, total_salary
	from (
		select dep_name
			, emp_number
			, total_salary
			, (@rn := @rn + 1) as seqnum
		from (
			select d.name as dep_name
				, if(e.id is null, 0, count(*)) as emp_number
				, ifnull(sum(salary), 0) as total_salary
			from employee as e
			right join department as d
			on e.department = d.id
			group by d.id
			having emp_number < 6
			order by total_salary desc, emp_number desc, d.id
		) as a
	) as b
	where mod(seqnum,2) = 1;
	
	
END