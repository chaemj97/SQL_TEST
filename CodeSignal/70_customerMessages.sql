DROP FUNCTION IF EXISTS response;
CREATE FUNCTION response(name VARCHAR(40)) RETURNS VARCHAR(200) DETERMINISTIC
BEGIN
    declare first_name VARCHAR(200);
    declare last_name varchar(200);
    
    set first_name = substring_index(name, ' ', 1);
    set last_name = substring_index(name, ' ', -1);
    
    set first_name = concat(upper(substring(first_name, 1, 1)), lower(substring(first_name, 2)));
    set last_name = concat(upper(substring(last_name, 1, 1)), lower(substring(last_name, 2)));
    
    return concat('Dear ', first_name, ' ', last_name, '! We received your message and will process it as soon as possible. Thanks for using our service. FooBar On! - FooBarIO team.');
END;

CREATE PROCEDURE solution()
BEGIN
    SELECT id, name, response(name) AS response
    FROM customers;
END;
