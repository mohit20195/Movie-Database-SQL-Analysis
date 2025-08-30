#Top 5 Rated Movies
SELECT title,release_year,rating
FROM movies
ORDER BY rating DESC
LIMIT 5;

#Most common genres of movies
SELECT m.title,m.release_year,COUNT(g.name) AS Common_Genre
FROM genres g LEFT JOIN movie_genres mg ON g.genre_id=mg.genre_id
LEFT JOIN movies m ON mg.movie_id=m.movie_id
GROUP BY m.movie_id, m.title,m.release_year
ORDER BY common_genre DESC;


#Highest number of votes among movies rated 9.0 or higher
SELECT *
FROM movies
WHERE rating>=9
ORDER BY votes DESC;


#Average rating of movies released before the year 2000
SELECT title,release_year,ROUND(AVG(rating)) AS Avg_Rating
FROM movies
WHERE release_year>=2000
GROUP BY title,release_year;


#The genre has the highest average movie rating
SELECT 
	title,
    release_year,
    name,
    ROUND(AVG(rating),2) AS Avg_Rating
FROM movies
LEFT JOIN movie_genres ON movies.movie_id=movie_genres.movie_id
LEFT JOIN genres ON movie_genres.genre_id=genres.genre_id
GROUP BY title,release_year,name,movies.movie_id
ORDER BY rating DESC;


#List movies that belong to more than 2 genres.
SELECT 
	title,
    release_year,
    ROUND(AVG(rating),2) AS Avg_Rating,
    COUNT(DISTINCT genres.genre_id) AS Common_Genre
FROM movies
LEFT JOIN movie_genres ON movies.movie_id=movie_genres.movie_id
LEFT JOIN genres ON movie_genres.genre_id=genres.genre_id
GROUP BY title,release_year,movies.movie_id
HAVING COUNT(DISTINCT genres.genre_id)>=2
ORDER BY rating DESC;


SELECT 
	title,
  release_year,
  ROUND(AVG(rating),2) AS Avg_Rating,
  COUNT(DISTINCT g.genre_id) AS Common_Genre
FROM movies m
LEFT JOIN movie_genres mg ON m.movie_id=mg.movie_id
LEFT JOIN genres g ON mg.genre_id=g.genre_id
GROUP BY title,release_year,m.movie_id
HAVING COUNT(DISTINCT g.genre_id)>=2
ORDER BY rating DESC;
    
 