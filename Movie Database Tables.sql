INSERT INTO movies (title, release_year, duration_minutes, rating, votes) VALUES
('The Shawshank Redemption', 1994, 142, 9.3, 2500000),
('The Godfather', 1972, 175, 9.2, 1800000),
('The Dark Knight', 2008, 152, 9.0, 2300000),
('Pulp Fiction', 1994, 154, 8.9, 1900000),
('Forrest Gump', 1994, 142, 8.8, 1800000);

INSERT INTO genres (name) VALUES
('Drama'), ('Crime'), ('Action'), ('Thriller'), ('Comedy');

INSERT INTO movie_genres (movie_id, genre_id) VALUES
(1, 1), -- Shawshank: Drama
(2, 1), (2, 2), -- Godfather: Drama, Crime
(3, 3), (3, 4), -- Dark Knight: Action, Thriller
(4, 2), (4, 4), -- Pulp Fiction: Crime, Thriller
(5, 1), (5, 5); -- Forrest Gump: Drama, Comedy

INSERT INTO directors (full_name) VALUES
('Frank Darabont'), ('Francis Ford Coppola'), ('Christopher Nolan'), ('Quentin Tarantino'), ('Robert Zemeckis');

INSERT INTO movie_directors (movie_id, director_id) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5);

INSERT INTO actors (full_name) VALUES
('Tim Robbins'), ('Morgan Freeman'), ('Marlon Brando'), ('Al Pacino'),
('Christian Bale'), ('Heath Ledger'), ('John Travolta'), ('Tom Hanks');

INSERT INTO movie_actors (movie_id, actor_id) VALUES
(1, 1), (1, 2),
(2, 3), (2, 4),
(3, 5), (3, 6),
(4, 7), (4, 4),
(5, 8);