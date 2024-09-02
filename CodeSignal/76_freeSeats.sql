CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	select f.flight_id
		, number_of_seats - ifnull(c.cnt, 0)
	from flights as f
	join planes as p
	on f.plane_id = p.plane_id 
	left join (select flight_id
				, count(*) as cnt
			from purchases
			group by flight_id		
	) as c
	on f.flight_id = c.flight_id
	order by f.flight_id;
END