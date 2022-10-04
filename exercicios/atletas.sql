CREATE DATABASE sprint1;
USE sprint1;
CREATE TABLE atleta (
idAtelta int primary key,
nome varchar (40),
modalidade varchar (40),
qtdMedalha int
);
INSERT INTO atleta VALUE
(0001, 'Rayssa Leal', 'Skate', 1);

INSERT INTO atleta VALUES
(0002, 'Italo Ferreira', 'Surfe', 1),
(0003, 'Rebeca Andrade', 'Ginastica', 1),
(0004, 'Martine Grael', 'Vela', 2),
(0005, 'Kahena Kunze', 'Vela', 2),
(0006, 'Ana Marcela Cunha', 'Natacao', 1),
(0007, 'Kelvin Hoefler', 'Skate', 2),
(0008, 'Pedro Barros', 'Skate', 1),
(0009, 'Hebert Conceicao', 'Boxe', 1),
(0010, 'Beatriz Ferreira', 'Boxe', 2);

SELECT * FROM atleta;

SELECT nome, qtdMedalha FROM atleta;

SELECT * FROM atleta WHERE modalidade = 'Skate';

SELECT * FROM atleta ORDER BY modalidade;

SELECT * FROM atleta ORDER BY qtdMedalha DESC;

SELECT * FROM atleta WHERE nome LIKE '%s%';

SELECT * FROM atleta WHERE nome LIKE 'R%';

SELECT * FROM atleta WHERE nome LIKE '%o%';

SELECT * FROM atleta WHERE nome LIKE '%r_';

-- DROP TABLE sprint1;