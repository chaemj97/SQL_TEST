CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT id
		, IF(value - SUM(expenditure_sum) < 0, -(value - SUM(expenditure_sum)), 0) AS loss
	FROM expenditure_plan, allowable_expenditure
	WHERE WEEK(monday_date, 1) >= left_bound AND WEEK(monday_date, 1) <= right_bound
	GROUP BY id;
END