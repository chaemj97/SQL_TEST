CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	with two_distance as (
		select p1.id as id1
			, p2.id as id2
			, ST_DISTANCE(point(p1.x, p1.y), point(p2.x, p2.y)) as distance
		from positions p1, positions p2
	)
	
	select id1, id2
	from two_distance
	where (id1, distance) in (select id1
									, min(distance) 
							from two_distance 
							where id1 <> id2 
							group by id1)
	order by id1;
END