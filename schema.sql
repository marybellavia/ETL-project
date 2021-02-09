CREATE TABLE NetflixMovies (
    movieID VARCHAR   NOT NULL,
    title VARCHAR   NOT NULL,
    director VARCHAR NOT NULL,
    country VARCHAR   NOT NULL,
    film_language VARCHAR   NOT NULL,
    release_year INTEGER   NOT NULL,
    duration INTEGER   NOT NULL,
    CONSTRAINT pk_NetflixMovies PRIMARY KEY (
        movieID
     )
);

CREATE TABLE MovieRatings (
    movieID VARCHAR   NOT NULL,
    avg_vote FLOAT   NOT NULL,
    votes INTEGER   NOT NULL,
    CONSTRAINT pk_MovieRatings PRIMARY KEY (
        movieID
     )
);

ALTER TABLE MovieRatings ADD CONSTRAINT fk_MovieRatings_movieID FOREIGN KEY(movieID)
REFERENCES NetflixMovies (movieID);