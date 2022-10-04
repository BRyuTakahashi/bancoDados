CREATE DATABASE sprint2;
USE sprint2;
CREATE TABLE paises(
idPais INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(30),
capital VARCHAR(40)
);

INSERT INTO paises (nome, capital) VALUES
('Japão', 'Tokyo'),
('Brasil', 'Brasilia'),
('Estados Unidos', 'Washingtom'),
('Korea', 'Seul'),
('China', 'Hong Kong'),
('Canada', 'Ottawa'),
('Alemanha', 'Berlim');

SELECT * FROM paises;

ALTER TABLE paises RENAME COLUMN nome TO nomePais;