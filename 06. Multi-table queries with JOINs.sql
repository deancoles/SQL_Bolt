-- Find the domestic and international sales for each movie
SELECT movie_title, boxoffice_domestic_sales, boxoffice_international_sales
FROM boxoffice
INNER JOIN movie ON boxoffice.boxoffice_movie_id = movie.movie_id;

-- Show the sales numbers for each movie that did better internationally rather than domestically
SELECT movie_title, boxoffice_international_sales, boxoffice_domestic_sales
FROM boxoffice
INNER JOIN movie ON boxoffice.boxoffice_movie_id = movie.movie_id
WHERE boxoffice_international_sales > boxoffice_domestic_sales
ORDER BY boxoffice_international_sales DESC;

-- List all the movies by their ratings in descending order
SELECT movie_title, boxoffice_rating
FROM boxoffice
INNER JOIN movie ON boxoffice.boxoffice_movie_id = movie.movie_id
ORDER BY boxoffice_rating DESC;