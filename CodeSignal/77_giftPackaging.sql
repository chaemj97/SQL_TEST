CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	select package_type
		, count(*)
	from packages as p
	join (
		select id
			, min(p.length*p.width*p.height) as volume
		from packages as p
		join gifts as g
		on g.length <= p.length and g.width <= p.width and g.height <= p.height
		group by id
	) as min_volume
	on p.length*p.width*p.height = min_volume.volume
	
	group by package_type;
END