CREATE DATABASE sprint1;
USE sprint1;
CREATE TABLE musica(
idMusica int primary key,
titulo varchar (40),
artista varchar (40),
genero varchar (40)
);

INSERT INTO musica VALUES
(1, 'Wake me up when September Ends', 'Green Day', 'Rock'),
(2, 'Holiday', 'Green Day', 'Rock'),
(3, 'Boulevard of Broken Dream', 'Green Day', 'Rock'),
(4, 'Its Time', 'Imagine Dragons','Pop'),
(5, 'Radioactive', 'Imagine Dragons', 'Pop'),
(6, 'Believer', 'Imagine Dragons', 'Pop'),
(7, 'Eenie Meenie', 'Sean Kingston', 'Pop'),
(8, 'Beggining', 'ONE OK ROCK', 'J-Rock'),
(9, 'Russian Roulette', 'Red Velvet', 'K-Pop'),
(10, 'Great Spirit', 'Armin van Buuren', 'Eletronica');

SELECT * FROM musica;

SELECT titulo, artista FROM musica;

SELECT * FROM musica WHERE genero = 'Rock';

SELECT * FROM musica WHERE artista = 'Green Day';

SELECT * FROM musica ORDER BY titulo;

SELECT * FROM musica ORDER BY artista DESC;

SELECT * FROM musica WHERE titulo LIKE 'W%';

SELECT * FROM musica WHERE artista LIKE '%y';

SELECT * FROM musica WHERE genero LIKE '_o%';

SELECT * FROM musica WHERE titulo LIKE '%a_';

-- DROP TABLE sprint1;