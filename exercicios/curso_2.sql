CREATE DATABASE sprint1_2;
USE sprint1_2;
CREATE TABLE curso(
idCurso int primary key auto_increment,
nome varchar (50),
sigla char(3),
coordenador varchar (40)
);

INSERT INTO curso (nome, sigla, coordenador) VALUES
('Analise e Desenvolvimento de Sistemas', 'ADS', 'Gerson'),
('Ciencia da Computação', 'CCO', 'Vivian'),
('Sistema da Informação', 'SSI', 'Monica'),
('Design', 'DSG', 'Nara');

SELECT * FROM curso;	

SELECT coordenador FROM curso;

SELECT * FROM curso WHERE sigla = 'ADS';

SELECT * FROM curso ORDER BY nome;

SELECT * FROM curso ORDER BY coordenador DESC;

SELECT * FROM curso WHERE nome LIKE 'A%';

SELECT * FROM curso WHERE nome LIKE '%S';

SELECT * FROM curso WHERE nome LIKE '_n%';

SELECT * FROM curso WHERE nome LIKE '%a_';

DROP TABLE curso;