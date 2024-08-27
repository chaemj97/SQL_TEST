CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	select id
		, hostname
	from (
		select *
			, SUBSTRING_INDEX(concat('...', hostname), '.', -1) as third
			, SUBSTRING_INDEX(concat('...', hostname), '.', -2) as second
			, SUBSTRING_INDEX(concat('...', hostname), '.', -3) as first
		from hostnames
	) as split
	order by third, second, first;
END