CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	DECLARE c INT DEFAULT 97;
	DROP TABLE IF EXISTS alpha;
	create TEMPORARY table alpha (letter varchar(2));
	-- create alphabet
	WHILE c <= 122 DO
      INSERT INTO alpha VALUES(CHAR(c));
      SET c = c + 1;
    END WHILE;
	
	select letter
		, char_length(all_str) - char_length(replace(all_str, letter, '')) as total
		, (select count(*) from strs where instr(str, letter) > 0) as occurrence
		, (select max(char_length(str) - char_length(replace(str, letter, ''))) from strs) as max_occurrence
		, (select count(*) from strs where char_length(str) - char_length(replace(str, letter, '')) = max_occurrence) as max_occurence_reached
	from alpha, (select group_concat(str separator '') as all_str from strs) t
	having total > 0;
END