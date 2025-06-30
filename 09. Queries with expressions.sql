-- List all movies and their combined sales in millions of dollars
SELECT movie_title, (boxoffice_domestic_sales + boxoffice_international_sales) / 1000000 AS 'combined sales'
FROM movie
JOIN boxoffice ON movie.movie_id = boxoffice.boxoffice_movie_id;

-- List all movies and their ratings in percent
SELECT movie_title, boxoffice_rating * 10 AS 'rating percent'
FROM movie
JOIN boxoffice ON movie.movie_id = boxoffice.boxoffice_movie_id;

-- List all movies that were released on even number years
SELECT movie_title, movie_year
FROM movie
WHERE movie_year % 2 = 0;  -- Modulo helps to find odd and even numbers, changing the 0 to 1 results in odd number years