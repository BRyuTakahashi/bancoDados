CREATE DATABASE sprint1_2;
USE sprint1_2;
CREATE TABLE musica (
idMusica int primary key auto_increment,
titulo varchar (40),
artista varchar (40),
genero varchar (40)
);

INSERT INTO musica (titulo, artista, genero) VALUES
('Wake me up when September Ends', 'Green Day', 'Rock'),
('Holiday', 'Green Day', 'Rock'),
('Boulevard of Broken Dream', 'Green Day', 'Rock'),
('Its Time', 'Imagine Dragons','Pop'),
('Radioactive', 'Imagine Dragons', 'Pop'),
('Believer', 'Imagine Dragons', 'Pop'),
('Eenie Meenie', 'Sean Kingston', 'Pop'),
('Beggining', 'ONE OK ROCK', 'J-Rock'),
('Russian Roulette', 'Red Velvet', 'K-Pop'),
('Great Spirit', 'Armin van Buuren', 'Eletronica');

SELECT * FROM musica;

ALTER TABLE musica ADD COLUMN curtidas int;

UPDATE musica SET curtidas = '1983'
	WHERE idMusica = '1';

UPDATE musica SET curtidas = '1478'
	WHERE idMusica = '2';

UPDATE musica SET curtidas = '1920'
	WHERE idMusica = '3';

UPDATE musica SET curtidas = '1846'
	WHERE idMusica = '4';

UPDATE musica SET curtidas = '1690'
	WHERE idMusica = '5';

UPDATE musica SET curtidas = '1935'
	WHERE idMusica = '6';

UPDATE musica SET curtidas = '1971'
	WHERE idMusica = '7';

UPDATE musica SET curtidas = '1743'
	WHERE idMusica = '8';

UPDATE musica SET curtidas = '1988'
	WHERE idMusica = '9';

UPDATE musica SET curtidas = '1650'
	WHERE idMusica = '10';

ALTER TABLE musica MODIFY COLUMN artista varchar (60);

UPDATE musica SET curtidas = '2011'
	WHERE idMusica = '1';
    
UPDATE musica SET curtidas = '1798'
	WHERE idMusica in ('2', '3');
    
UPDATE musica SET titulo = 'American Idiot'
	WHERE idMusica = '5';
    
DELETE FROM musica WHERE idMusica = '4';

SELECT * FROM musica WHERE genero <> 'Rock';

SELECT * FROM musica WHERE curtidas >= '1980';

DESC musica;