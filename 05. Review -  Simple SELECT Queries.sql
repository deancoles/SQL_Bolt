-- List all the Canadian cities and their populations
SELECT * from city WHERE city_country LIKE 'Canada';

-- Order all the cities in the United States by their latitude from north to south
SELECT * from city WHERE city_country LIKE 'United States' ORDER BY city_latitude DESC;

-- List all the cities west of Chicago, ordered from west to east
SELECT * from city WHERE city_longitude < -87.629798 ORDER BY city_longitude ASC;

-- List the two largest cities in Mexico (by population)
SELECT * from city WHERE city_country LIKE 'Mexico' ORDER BY city_population DESC LIMIT 2;

-- List the third and fourth largest cities (by population) in the United States and their population
SELECT * from city WHERE city_country LIKE 'United States' ORDER BY city_population DESC LIMIT 2 OFFSET 2;