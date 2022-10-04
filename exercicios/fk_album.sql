CREATE DATABASE sprint2;
USE sprint2;
CREATE TABLE album(
idAlbum INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (40),
tipo VARCHAR (10) CONSTRAINT chkTipo CHECK (tipo IN ('digital', 'físico')),
dtLancamento DATE
);

INSERT INTO album (nome, tipo, dtLancamento) VALUES
('Agora', 'fisico', '2008-02-20'),
('Em Comum', 'digital', '2012-04-01'),
('American Idiot', 'fisico', '2004-05-30'),
('Night Visions', 'digital', '2012-07-09'),
('Eenie Meenie', 'fisico', '2013-02-17');

DESC album;

SELECT * FROM album;