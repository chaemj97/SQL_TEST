CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	select size
		, sum(shots=0) as undamaged
		, sum(shots BETWEEN 1 and size-1) as partly_damaged
		, sum(size=shots) as sunk
	from (
		select (bottom_right_x - upper_left_x + bottom_right_y - upper_left_y) + 1 as size
			, sum((target_x between upper_left_x and bottom_right_x) and (target_y BETWEEN upper_left_y and bottom_right_y)) as shots
		from locations_of_ships, opponents_shots
		group by locations_of_ships.id
	) as ship
	group by size
	order by size;
END