CREATE PROCEDURE solution()
    SELECT id,login,name
    FROM users
    WHERE type='user'
     OR TYPE<>'USER'
    ORDER BY id
