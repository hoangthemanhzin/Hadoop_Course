CREATE VIEW IF NOT EXISTS topMovieIDs AS
SELECT movie_id, AVG(movie_id) as AvgRatingCount, COUNT(movie_id) as ratingCount
FROM ratings
GROUP BY movie_id
ORDER BY AvgRatingCount DESC;

SELECT n.name, AvgRatingCount
FROM topMovieIDs t JOIN movie_names n ON t.movie_id = n.movie_id;
WHERE ratingCount > 10