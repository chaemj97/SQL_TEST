CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	select s1.name as place1
		, s2.name as place2
	from sights s1
	cross join sights s2
	where s1.name < s2.name
		and sqrt(power(s1.x-s2.x,2)+power(s1.y-s2.y,2)) <= 5
	order by place1, place2;
END