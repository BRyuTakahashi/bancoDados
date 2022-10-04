CREATE DATABASE sprint2;
USE sprint2;

CREATE TABLE curso(
idCurso INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50),
sigla CHAR(3),
coordenador VARCHAR(40)
);

INSERT INTO curso (nome, sigla, coordenador) VALUES
('Analise e Desenvolvimento de Sistemas', 'ADS', 'Vivian'),
('Ciencias da Computação', 'CCO', 'Monica'),
('Sistemas de Informação', 'SSI', 'Chola');

CREATE TABLE professor(
idProfessor INT PRIMARY KEY AUTO_INCREMENT,
nomeProf VARCHAR(45),
disciplina VARCHAR(45),
dtAula VARCHAR(45)
);

ALTER TABLE professor ADD COLUMN fkCurso INT;
ALTER TABLE professor ADD FOREIGN KEY (fkCurso) REFERENCES curso(idCurso);

INSERT INTO professor (nomeProf, disciplina, dtAula, fkCurso) VALUES
('Chola', 'Arq. Comp.', 'Segunda', '1'),
('Vivian', 'Banco de Dados', 'Terça', '1'),
('Fernanda', 'P.I.', 'Quarta', '1'),
('Yoshi', 'Algorítmo', 'Quinta', '1'),
('JP', 'Algorítmo', 'Sexta', '1'),
('Dan', 'Socioemocional', 'Todos os dias', '1'),
('Thiago', 'Socioemocional', 'Todos os dias', '1'),
('Vera', 'Socioemocional', 'Todos os dias', '1');

ALTER TABLE professor ADD CONSTRAINT chkAula CHECK (dtAula IN ('Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Todos os dias'));

SELECT * FROM professor JOIN curso ON fkCurso = idCurso;

SELECT * FROM professor JOIN curso ON fkCurso = idCurso WHERE disciplina = 'Socioemocional';