CREATE DATABASE sprint1_2;
USE sprint1_2;
CREATE TABLE filme (
idFilme int primary key auto_increment,
titulo varchar (50),
genero varchar (40),
diretor varchar (40)
);

INSERT INTO filme (titulo, genero, diretor) VALUES
('Jogador Numero Um', 'Ficção', 'Steven Spielberg'),
('Jurassic Park', 'Ficção', 'Steven Spielberg'),
('Your Name', 'Anime', 'Makoto Shinkai'),
('Cinco Centimetros por Segundo', 'Anime', 'Makoto Shinkai'),
('Sword art Online: Ordinal Scale', 'Anime', 'Tomohiko Itto'),
('Space Jam: O Jogo do Seculo', 'Comedia', 'Joe Pytka'),
('Avengers: End Game', 'Ação', 'Anthony Russo, Joe Russo'),
('A Familia do Futuro', 'Infanti/ Aventura', 'Stephen J. Anderson'),
('Ratatouille', 'Infantil/ Comedia', 'Brad Bird'),
('Up: Altas Aventuras', 'Infantil/ Aventura', 'Peter Docter'),
('Shang-Chi e a Lenda dos Dez Aneis', 'Ação', 'Destin Cretton');

SELECT * FROM filme;

ALTER TABLE filme ADD COLUMN protagonista varchar(50);

UPDATE filme SET protagonista = 'Parzival'
	WHERE idFilme = '1';

UPDATE filme SET protagonista = 'John Hammond'
	WHERE idFilme = '2';

UPDATE filme SET protagonista = 'Mitsuha Miyamisu, Taki Tachibana'
	WHERE idFilme = '3';

UPDATE filme SET protagonista = 'Takaki Tono'
	WHERE idFilme = '4';

UPDATE filme SET protagonista = 'Kirigaya Kazuto (Kirito)'
	WHERE idFilme = '5';

UPDATE filme SET protagonista = 'Lebron James'
	WHERE idFilme = '6';

UPDATE filme SET protagonista = 'Steve Rogers, Tonny Stark'
	WHERE idFilme = '7';

UPDATE filme SET protagonista = 'Lewis'
	WHERE idFilme = '8';

UPDATE filme SET protagonista = 'Remi'
	WHERE idFilme = '9';

UPDATE filme SET protagonista = 'Sr.Fredericseu'
	WHERE idFilme = '10';

UPDATE filme SET protagonista = 'Shan-Chi'
	WHERE idFilme = '11';

ALTER TABLE filme MODIFY COLUMN diretor varchar (150);

UPDATE filme SET diretor = 'Makoto Shinkai'
	WHERE idFilme = '5';
    
UPDATE filme SET diretor = 'Antonny Russo, Joe Russo'
	WHERE idFilme in ('2', '7');
    
UPDATE filme SET titulo = 'Wall-e'
	WHERE idFilme = '6';
    
DELETE FROM filme WHERE idFilme = '3';

SELECT titulo FROM filme WHERE genero <> 'Anime';

SELECT * FROM filme WHERE genero = 'Ficção';

DESC filme;