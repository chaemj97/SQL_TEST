-- char -> int
create function charvalue (cha varchar(1))
	returns int
BEGIN
	return case cha
		when 'I' then 1
		when 'V' then 5
		WHEN 'X' THEN 10 
        WHEN 'L' THEN 50 
        WHEN 'C' THEN 100 
        WHEN 'D' THEN 500 
        WHEN 'M' THEN 1000
        ELSE 0
	end;
end;

-- chapter_number -> int
create function fromromanNumerals (chapter_number varchar(100))
	returns int
BEGIN
	declare result int default 0;
	declare conversion_int int default 0;
	declare pre_int int DEFAULT 0;
	
	-- one char -> one int
	while char_length(chapter_number) > 0 DO
		set conversion_int = charvalue(left(chapter_number,1));
		set result = result + conversion_int - if(conversion_int > pre_int, pre_int*2, 0);
		set chapter_number = substring(chapter_number, 2);
		set pre_int = conversion_int;
	end while;
	
	-- return result;
	return result;
end;

CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	select chapter_name
	from book_chapters
	order by fromromanNumerals(chapter_number);	
END