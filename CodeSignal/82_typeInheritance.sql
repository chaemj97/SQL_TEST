CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	set @first := true;
	while row_count() or @first do
		set @first := false;
		update inheritance a
		join inheritance b 
			on a.base = b.derived and a.base != 'number'
		set a.base = b.base;
	end while;
	
	select var_name
		, type as var_type
	from variables as v
	join inheritance as i
	on type = derived
	where base = 'Number'
	order by var_name; 
END