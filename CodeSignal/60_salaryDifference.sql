CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	select ifnull(max_s-min_s, 0)
	from (
		select salary*count(*) as max_s
		from employees
		where salary = (select max(salary) from employees)) max_salary
		, (
		select salary*count(*) as min_s
		from employees
		where salary = (select min(salary) from employees)) min_salary;
	
END