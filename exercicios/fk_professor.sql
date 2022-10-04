CREATE DATABASE sprint1;
USE sprint1;

-- criando entidade professor
CREATE TABLE professor(
idProfessor INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50),
sobrenome VARCHAR(30),
especialidade1 VARCHAR(40),
especialidade2 VARCHAR(40)
);

-- adicionando ocorrencias na entidade professor
INSERT INTO professor (nome, sobrenome, especialidade1, especialidade2) VALUES
('Renato', 'Vizioli', 'Arquitetura', 'UX/UI'),
('Luiz', 'Alexandre', 'Psicologia', 'Design'),
('Grace', 'Kishimoto', 'Design', 'Joias'),
('Kito', 'Castanha', 'Design', 'Branding'),
('Jair', 'Alves', 'Design', 'Marca Pessoal'),
('Zuleica', 'Zuzu', 'Arquitetura', 'Tipografia');

-- criando entidade disciplina
CREATE TABLE disciplina(
idDisc INT PRIMARY KEY AUTO_INCREMENT,
nomeDisc VARCHAR(45)
);

-- adicinando ocorrencias na entidade disciplinas
INSERT INTO disciplina (nomeDisc) VALUES
('Design de Aplicativos'),
('Portfolio'),
('Design de Joias'),
('Branding'),
('Marca Pessoal'),
('Tipografia');

ALTER TABLE professor ADD COLUMN fkDisc INT;
ALTER TABLE professor ADD FOREIGN KEY (fkDisc) REFERENCES disciplina(idDisc);

UPDATE professor SET fkDisc = '1' WHERE idProfessor = 1;
UPDATE professor SET fkDisc = 2 WHERE idProfessor = 2;
UPDATE professor SET fkDisc = 3 WHERE idProfessor = 3;
UPDATE professor SET fkDisc = 4 WHERE idProfessor = 4;
UPDATE professor SET fkDisc = 5 WHERE idProfessor = 5;
UPDATE professor SET fkDisc = 6 WHERE idProfessor = 6;

SELECT nome, nomeDisc FROM professor JOIN disciplina ON fkDisc = idDisc;

SELECT nome, nomeDisc FROM professor JOIN disciplina ON fkDisc = idDisc WHERE nome = 'Renato';

SELECT * FROM professor JOIN disciplina ON fkDisc = idDisc WHERE sobrenome = 'Vizioli';

SELECT especialidade1, nomeDisc FROM professor JOIN disciplina ON fkDisc = idDisc WHERE especialidade1 = 'Arquitetura';