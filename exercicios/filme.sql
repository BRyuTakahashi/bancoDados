CREATE DATABASE sprint1;
USE sprint1;
CREATE TABLE filme(
idFilme int primary key,
titulo varchar (50),
genero varchar (40),
diretor varchar (40)
);

INSERT INTO filme VALUES
(1, 'Jogador Numero Um', 'Ficção', 'Steven Spielberg'),
(2, 'Jurassic Park', 'Ficção', 'Steven Spielberg'),
(3, 'Your Name', 'Anime', 'Makoto Shinkai'),
(4, 'Cinco Centimetros por Segundo', 'Anime', 'Makoto Shinkai'),
(5, 'Sword art Online: Ordinal Scale', 'Anime', 'Tomohiko Itto'),
(6, 'Space Jam: O Jogo do Seculo', 'Comedia', 'Joe Pytka'),
(7, 'Avengers: End Game', 'Ação', 'Anthony Russo, Joe Russo'),
(8, 'A Familia do Futuro', 'Infanti/ Aventura', 'Stephen J. Anderson'),
(9, 'Ratatouille', 'Infantil/ Comedia', 'Brad Bird'),
(10, 'Up: Altas Aventuras', 'Infantil/ Aventura', 'Peter Docter'),
(11, 'Shang-Chi e a Lenda dos Dez Aneis', 'Ação', 'Destin Cretton');

SELECT * FROM filme;

SELECT titulo, diretor FROM filme;

SELECT * FROM filme WHERE genero = 'Anime';

SELECT * FROM filme WHERE diretor = 'Makoto Shinkai';

SELECT * FROM filme ORDER BY titulo;

SELECT * FROM filme ORDER BY diretor DESC;

SELECT * FROM filme WHERE titulo LIKE 'S%';

SELECT * FROM filme WHERE diretor LIKE '%a';

SELECT * FROM filme WHERE genero LIKE '_o%';

SELECT * FROM filme WHERE titulo LIKE '%r_';

-- DROP TABLE sprint1;