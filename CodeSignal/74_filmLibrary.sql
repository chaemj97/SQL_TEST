CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	select a.actor
		, a.age
	from actor_ages as a
	join (select actor
			from starring_actors
			where movie_name in (select movie
								from movies
								where genre = (select genre
												from movies
												group by genre
												order by count(*) DESC
												limit 1)
		)
	) as n
	on a.actor = n.actor
	order by a.age desc, a.actor;
END