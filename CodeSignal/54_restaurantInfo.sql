CREATE PROCEDURE solution()
BEGIN
    ALTER TABLE restaurants ADD COLUMN (
        discription varchar(100) default 'TBD',
        active int default 1);
    

    SELECT * FROM restaurants ORDER BY id;
END
