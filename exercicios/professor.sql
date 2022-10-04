CREATE DATABASE sprint1;
USE sprint1;
CREATE TABLE professor(
idProfessor int primary key,
nome varchar(50),
especialidade varchar(40),
dtNasc char(10)
);

INSERT INTO professor VALUES
(1, 'Kito Castanha', 'Branding', '1974-10-23'),
(2, 'Grace Kishimoto', 'Joias', '1980-06-10'),
(3, 'Luiz Alexandre', 'Embalagens', '1982-07-13'),
(4, 'Renato Viziolli', 'UX/UI', '1974-09-03'),
(5, 'Vivian Silva', 'Banco de Dados', '1980-10-23'),
(6, 'Monica Herrero', 'Tecnologia da Informação', '1968-02-29'),
(7, 'Jose Yoshiriro', 'Algoritmo', '1973-05-09'),
(8, 'Caio', 'Algoritmo', '1992-08-05'),
(9, 'Dan', 'Desenvolvimento Socioemocional', '1995-06-18'),
(10, 'Thiago Gomes', 'Desenvolvimento Socioemocional', '1994-03-19');

SELECT * FROM professor;

SELECT especialidade FROM professor;

SELECT * FROM professor WHERE especialidade = 'Desenvolvimento Socioemocional';

SELECT * FROM professor ORDER BY nome;

SELECT * FROM professor ORDER BY dtNasc DESC;

SELECT * FROM professor WHERE nome LIKE 'D%';

SELECT * FROM professor WHERE nome LIKE '%a';

SELECT * FROM professor WHERE nome LIKE '_a%';

SELECT * FROM professor WHERE nome LIKE '%t_';

-- DROP TABLE sprint1;