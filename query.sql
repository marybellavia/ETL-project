SELECT * FROM movieratings;

SELECT * FROM netflixmovies;

-- Join tables on county_id
SELECT movieratings.movieid, netflixmovies.title, movieratings.avg_vote, movieratings.votes, netflixmovies.country, netflixmovies.film_language, netflixmovies.release_year, netflixmovies.duration
FROM movieratings
FULL OUTER JOIN netflixmovies
ON movieratings.movieid = netflixmovies.movieid;