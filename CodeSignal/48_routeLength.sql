CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	select round(sum(sqrt(power(xy.x-xy.x2, 2)+power(xy.y-xy.y2, 2))),9) as total
	from (select *
			, lead(x) over() as x2
			, lead(y) over() as y2
		from cities c1) xy;
END