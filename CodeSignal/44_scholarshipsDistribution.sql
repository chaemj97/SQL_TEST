CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT candidate_id as student_id
	FROM candidates
	where candidate_id not in (select student_id from detentions)
	order by student_id;
END