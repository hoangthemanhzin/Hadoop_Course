CREATE VIEW IF NOT EXISTS topMovieIDs AS
SELECT movie_id, count(movie_id) as ratingCount
FROM ratings
GROUP BY movie_id
ORDER BY ratingCount DESC;

SELECT n.name, ratingCount
FROM topMovieIDs t JOIN movie_names n ON t.movie_id = n.movie_id;