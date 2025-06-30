-- Find the movie with a row id of 6
SELECT * FROM movie WHERE movie_id =6;

-- Find the movies released in the years between 2000 and 2010
SELECT * FROM movie WHERE movie_year BETWEEN 2000 AND 2010;

-- Find the movies not released in the years between 2000 and 2010
SELECT * FROM movie WHERE movie_year NOT BETWEEN 2000 AND 2010;

-- Find the first 5 Pixar movies and their release year
SELECT movie_title, movie_year FROM movie LIMIT 5;