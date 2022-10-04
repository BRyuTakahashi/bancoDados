CREATE 	DATABASE sprint1_2;
USE sprint1_2;
CREATE TABLE atleta(
idAtleta int primary key auto_increment,
nome varchar(40),
modalidade varchar (40),
qntMedalha int
);

INSERT INTO atleta VALUES
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

SELECT * FROM atleta;

UPDATE atleta SET qntMedalha = '2'
	WHERE idAtleta = '1';
    
UPDATE atleta SET qntMedalha = '4'
	WHERE idAtleta in ('2', 3);
    
UPDATE atleta SET nome = 'Paulo Rodrigo'
	WHERE idAtleta = '4';
    
ALTER TABLE atleta ADD COLUMN dtNasc DATE;

UPDATE atleta SET dtNasc = '2006-01-04'
	WHERE idAtleta = '1';

UPDATE atleta SET dtNasc = '2002-06-21'
	WHERE idAtleta = '2';

UPDATE atleta SET dtNasc = '1996-11-14'
	WHERE idAtleta = '3';

UPDATE atleta SET dtNasc = '1989-04-01'
	WHERE idAtleta = '4';

UPDATE atleta SET dtNasc = '1993-10-29'
	WHERE idAtleta = '5';

UPDATE atleta SET dtNasc = '1997-08-24'
	WHERE idAtleta = '6';

UPDATE atleta SET dtNasc = '2001-06-28'
	WHERE idAtleta = '7';

UPDATE atleta SET dtNasc = '2001-07-17'
	WHERE idAtleta = '8';

UPDATE atleta SET dtNasc = '2000-07-07'
	WHERE idAtleta = '9';

UPDATE atleta SET dtNasc = '2000-05-08'
	WHERE idAtleta = '10';
    
SELECT * FROM atleta;

DELETE FROM atleta WHERE idAtleta = '5';

SELECT * FROM atleta WHERE modalidade <> 'Skate';

SELECT * FROM atleta WHERE qntMedalha >= '3';

ALTER TABLE atleta MODIFY COLUMN modalidade varchar(60);

DESC atleta;

TRUNCATE TABLE atleta;