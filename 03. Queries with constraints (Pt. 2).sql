-- Find all the Toy Story movies
SELECT * FROM movie WHERE movie_title LIKE '%Toy Story%';

-- Find all the movies directed by John Lasseter
SELECT * FROM movie WHERE movie_director = 'John Lasseter';

-- Find all the movies (and director) not directed by John Lasseter
SELECT * FROM movie WHERE movie_director != 'John Lasseter';

-- Find all the WALL-* movies
SELECT * FROM movie WHERE movie_title LIKE '%WALL-%';