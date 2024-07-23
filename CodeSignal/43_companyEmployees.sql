CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	select *
	from departments
	cross join employees
	order by dep_name, emp_name;
END