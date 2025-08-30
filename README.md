# 🎬 Movie Database SQL Analysis

This project explores a simulated **Movie Database** using advanced SQL queries. The aim is to showcase real-world data analysis techniques using SQL — including **JOINs**, **window functions**, **aggregations**, and **genre-based insights**.

---

## 📌 Features Covered

- ✅ Complex `JOIN`s across multiple tables
- ✅ Aggregation with `COUNT()`, `AVG()`, and `GROUP BY`
- ✅ Filtering with `HAVING`
- ✅ Ranking movies using `RANK()` and `DENSE_RANK()`
- ✅ Compatible with MySQL and SQL standards

---

## 📸 Screenshot
<img width="384" height="806" alt="image" src="https://github.com/user-attachments/assets/11290474-def0-4486-9d09-456a1bec8b86" />

---

## 🧠 Queries 

### 🎯 1. Top 5 Rated Movies

SELECT 
  title,
  release_year,
  rating
FROM movies
ORDER BY rating DESC
LIMIT 5;

### 🎯 2. Most common genres of movies

SELECT 
  m.title,
  m.release_year,
  COUNT(g.name) AS Common_Genre
FROM genres g 
LEFT JOIN movie_genres mg ON g.genre_id=mg.genre_id
LEFT JOIN movies m ON mg.movie_id=m.movie_id
GROUP BY m.movie_id, m.title,m.release_year
ORDER BY common_genre DESC;

### 🎯 3. Highest number of votes among movies rated 9.0 or higher

SELECT *
FROM movies
WHERE rating>=9
ORDER BY votes DESC;

### 🎯 4. Average rating of movies released before the year 2000

SELECT 
  title,
  release_year,
  ROUND(AVG(rating)) AS Avg_Rating
FROM movies
WHERE release_year>=2000
GROUP BY title,release_year;

### 🎯 5. The genre has the highest average movie rating

SELECT 
	title,
  release_year,
  name,
  ROUND(AVG(rating),2) AS Avg_Rating
FROM movies m
LEFT JOIN movie_genres mg ON m.movie_id=mg.movie_id
LEFT JOIN genres g ON mg.genre_id=g.genre_id
GROUP BY title,release_year,name,m.movie_id
ORDER BY rating DESC;

### 🎯 6. List movies that belong to more than 2 genres.

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

## 🧠 Key Insights

- Identified movies with multiple genres and their average ratings
- Explored genre popularity and average rating per genre
- Practiced combining `GROUP BY`, `HAVING`, and `JOINs` for real-world cases

## 📬 Contact Me

I'm always happy to connect with fellow data enthusiasts, recruiters, or collaborators!
- 👤 **Name:**   Mohit Sharma
- 📧 **Email:** mohit20195@gmail.com
