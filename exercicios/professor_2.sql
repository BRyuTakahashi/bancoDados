CREATE DATABASE sprint1_2;
USE sprint1_2;
CREATE TABLE professor (
idProfessor int primary key auto_increment,
nome varchar(50),
especialidade varchar(40),
dtNasc date
);

INSERT INTO professor (nome, especialidade, dtNasc) VALUES
('Kito Castanha', 'Branding', '1974-10-23'),
('Grace Kishimoto', 'Joias', '1980-06-10'),
('Luiz Alexandre', 'Embalagens', '1982-07-13'),
('Renato Viziolli', 'UX/UI', '1974-09-03'),
('Vivian Silva', 'Banco de Dados', '1980-10-23'),
('Monica Herrero', 'Tecnologia da Informação', '1968-02-29'),
('Jose Yoshiriro', 'Algoritmo', '1973-05-09'),
('Caio', 'Algoritmo', '1992-08-05'),
('Dan', 'Desenvolvimento Socioemocional', '1995-06-18'),
('Thiago Gomes', 'Desenvolvimento Socioemocional', '1994-03-19');

SELECT * FROM professor;

ALTER TABLE professor ADD COLUMN funcao varchar(50), ADD CONSTRAINT chkfuncao CHECK (funcao in ('monitor', 'assistente', 'titular'));

UPDATE professor SET funcao = 'titular'
	WHERE idProfessor in ('1', '2', '3', '4', '5', '6', '7', '8', '9', '10');
    
INSERT INTO professor (nome, especialidade, dtNasc, funcao) VALUE
('Fernanda', 'Pesquisa e Inovacao', '1996-04-24', 'titular');

DELETE FROM professor WHERE idProfessor = '5';

SELECT nome FROM professor WHERE funcao = 'titular';

SELECT especialidade, dtNasc FROM professor WHERE funcao = 'titular';

UPDATE professor SET dtNasc = '1999-03-29'
	WHERE idProfessor = '3';
    
TRUNCATE TABLE professor;