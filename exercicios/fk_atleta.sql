CREATE DATABASE sprint2;
USE sprint2;

-- criando entidade atleta
CREATE TABLE atleta(
idAtleta INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(40),
modalidade VARCHAR(40),
qntMedalha INT
);

-- adicionando correncias da entidade atleta
INSERT INTO atleta (nome, modalidade, qntMedalha) VALUES
('Rayssa Leal', 'Skate', 1),
('Italo Ferreira', 'Surfe', 1),
('Rebeca Andrade', 'Ginastica', 1),
('Martine Grael', 'Vela', 2),
('Kahena Kunze', 'Vela', 2),
('Ana Marcela Cunha', 'Natacao', 1),
('Kelvin Hoefler', 'Skate', 2),
('Pedro Barros', 'Skate', 1),
('Hebert Conceicao', 'Boxe', 1),
('Beatriz Ferreira', 'Boxe', 2);


-- criando entidade paises
CREATE TABLE paises(
idPais INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(30),
capital VARCHAR(40)
);

-- adicionando ocorrencia da entidade paises
INSERT INTO paises (nome, capital) VALUES
('Japão', 'Tokyo'),
('Brasil', 'Brasilia'),
('Estados Unidos', 'Washingtom'),
('Korea', 'Seul'),
('China', 'Hong Kong'),
('Canada', 'Ottawa'),
('Alemanha', 'Berlim');

SELECT * FROM atleta;
SELECT * FROM paises;

DESC atleta;

ALTER TABLE atleta ADD fkPais INT;
ALTER TABLE atleta ADD FOREIGN KEY (fkPais) REFERENCES paises(idPais);

UPDATE atleta SET fkPais = 2 WHERE idAtleta IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

ALTER TABLE atleta RENAME COLUMN nome TO nomeAtleta;

SELECT nomeAtleta AS Atleta, nomePais AS Pais FROM atleta JOIN paises ON idPais = fkPais;

SELECT nomeAtleta AS Atleta, nomePais AS Pais FROM atleta JOIN paises ON idPais = fkPais WHERE nomeAtleta LIKE 'Rayssa %';

SELECT nomeAtleta AS Atleta, nomePais AS Pais FROM atleta JOIN paises ON idPais = fkPais WHERE capital = 'Brasilia';