CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SET @first_max = (SELECT MAX(first_criterion) FROM scores);
	SET @second_max = (SELECT MAX(second_criterion) FROM scores);
	SET @third_max = (SELECT MAX(third_criterion) FROM scores);
	SET @first_min = (SELECT MIN(first_criterion) FROM scores);
	SET @second_min = (SELECT MIN(second_criterion) FROM scores);
	SET @third_min = (SELECT MIN(third_criterion) FROM scores);
	
	select *
	from scores
	where if(first_criterion = @first_max, 1, 0) + if(first_criterion = @first_min, 1, 0)
		+ if(second_criterion = @second_max, 1, 0) + if(second_criterion = @second_min, 1, 0)
		+ if(third_criterion = @third_max, 1, 0) + if(third_criterion = @third_min, 1, 0) < 2;
END  