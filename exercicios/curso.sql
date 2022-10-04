CREATE DATABASE sprint1;
USE sprint1;
CREATE TABLE curso(
idCurso int primary key,
nome varchar (50),
sigla char(3),
coordenador varchar (40)
);

INSERT INTO curso VALUES
(1, 'Analise e Desenvolvimento de Sistemas', 'ADS', 'Gerson'),
(2, 'Ciencia da Computação', 'CCO', 'Vivian'),
(3, 'Sistema da Informação', 'SSI', 'Monica'),
(4, 'Design', 'DSG', 'Nara');

SELECT * FROM curso;

SELECT coordenador FROM curso;

SELECT * FROM curso WHERE sigla = 'ADS';

SELECT * FROM curso ORDER BY nome;

SELECT * FROM curso ORDER BY coordenador DESC;

SELECT * FROM curso WHERE nome LIKE 'D%';

SELECT * FROM curso WHERE nome LIKE '%o';

SELECT * FROM curso WHERE nome LIKE '_n%';

SELECT * FROM curso WHERE nome LIKE '%a_';

-- DROP TABLE sprint1;