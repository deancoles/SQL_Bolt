-- List all directors of Pixar movies (alphabetically), without duplicates
SELECT DISTINCT movie_director FROM movie ORDER BY movie_director;

-- List the last four Pixar movies released (ordered from most recent to least)
SELECT * FROM movie ORDER BY movie_year DESC LIMIT 4;

-- List the first five Pixar movies sorted alphabetically
SELECT * from movie ORDER BY movie_title LIMIT 5;

-- List the next five Pixar movies sorted alphabetically
SELECT * from movie ORDER BY movie_title LIMIT 5 OFFSET 5;