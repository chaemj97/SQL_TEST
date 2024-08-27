CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT distinct a.anonymous_id as anonym_id
		, (select event_name
			from tracks b
			where a.anonymous_id = b.anonymous_id and b.user_id is NULL
			order by received_at DESC
			limit 1) as first_null
		, (select event_name
			from tracks b
			where a.anonymous_id = b.anonymous_id and b.user_id is not NULL
			order by received_at
			limit 1) as last_notnull
	from tracks a
	order by a.anonymous_id;
END