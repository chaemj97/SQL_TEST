CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	select concat(if(date is not null, concat('  date: ', date, '; miles covered: '),
									if(driver_name is not null, concat(' Name: ', driver_name, '; number of inspections: ', inspect_cnt, '; miles driven: ')
																, concat(' Total miles driven by all drivers combined: '))), miles) as summary 
	from (
		SELECT driver_name
			, date
			, sum(miles_logged) as miles
			, count(*) as inspect_cnt
		from inspections
		group by driver_name, date
		with rollup
	) as a
	order by driver_name, date;
END