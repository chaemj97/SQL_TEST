CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	WITH OPER AS (
		SELECT *
			,CASE
				WHEN operation = '+' THEN a + b
				WHEN operation = '-' THEN a - b
				WHEN operation = '*' THEN a * b
				WHEN operation = '/' THEN
					CASE
						WHEN b <> 0 THEN a / b
						ELSE NULL  -- 나누는 수가 0인 경우 NULL 처리
					END
				ELSE NULL  -- 지정된 연산자 이외의 경우 NULL 처리
			END AS result
		FROM EXPRESSIONS
	)
	SELECT ID, A, B, operation, C
	FROM OPER
	WHERE C = RESULT;

END