CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	select distinct buyer_name
	from (
		select *
			, rank() over(order by timestamp) as r
		from purchases
	) as ra
	where mod(r,4) = 0
	order by buyer_name;
END