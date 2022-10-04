CREATE DATABASE sprint2;
USE sprint2;

-- criando entidade musica
CREATE TABLE musica(
idMusica INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(40),
artista VARCHAR(40),
genero VARCHAR(40)
);

-- adicionando ocorrencia da entidade musica 
INSERT INTO musica (titulo, artista, genero) VALUES
('Wake me up when September Ends', 'Green Day', 'Rock'),
('Holiday', 'Green Day', 'Rock'),
('Boulevard of Broken Dream', 'Green Day', 'Rock'),
('Its Time', 'Imagine Dragons','Pop'),
('Radioactive', 'Imagine Dragons', 'Pop'),
('Cedo ou Tarde', 'NX Zero', 'Rock'),
('Eenie Meenie', 'Sean Kingston', 'Pop'),
('Ligação', 'NX Zero', 'Rock'),
('Silêncio', 'NX Zero', 'Rock'),
('Daqui Pra Frente', 'NX Zero', 'Rock');

-- criando entidade album
CREATE TABLE album(
idAlbum INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (40),
tipo VARCHAR (10) CONSTRAINT chkTipo CHECK (tipo IN ('digital', 'físico')),
dtLancamento DATE
);

-- adicionando ocorrencias da entidade album
INSERT INTO album (nome, tipo, dtLancamento) VALUES
('Agora', 'fisico', '2008-02-20'),
('Em Comum', 'digital', '2012-04-01'),
('American Idiot', 'fisico', '2004-05-30'),
('Night Visions', 'digital', '2012-07-09'),
('Eenie Meenie', 'fisico', '2013-02-17');

SELECT * FROM musica;

SELECT * FROM album;

ALTER TABLE musica ADD COLUMN fkAlbum INT;
ALTER TABLE musica ADD FOREIGN KEY (fkAlbum) REFERENCES album(idAlbum);

UPDATE musica SET fkAlbum = 6 WHERE idMusica IN (6, 9, 10);
UPDATE musica SET fkAlbum = 7 WHERE idMusica = 8;
UPDATE musica SET fkAlbum = 8 WHERE idMusica IN (1, 2, 3);
UPDATE musica SET fkAlbum = 9 WHERE idMusica IN (4, 5);
UPDATE musica SET fkAlbum = 10 WHERE idMusica = 7;

SELECT * FROM musica JOIN album ON fkAlbum = idAlbum;

SELECT titulo, nome FROM musica JOIN album ON fkAlbum = idAlbum;

SELECT * FROM musica JOIN album ON fkAlbum = idAlbum WHERE tipo = 'digital';