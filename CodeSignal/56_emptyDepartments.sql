CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	select dep_name
	from departments
	where not EXISTS (SELECT * from employees where employees.department = departments.id);
END