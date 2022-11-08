CREATE DATABASE pratica9;
USE pratica9;

CREATE TABLE professor(
idProfessor INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (45),
disciplina VARCHAR(45)
) AUTO_INCREMENT = 1000;

CREATE TABLE grupo(
idGrupo INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
descricao VARCHAR(45)
);

CREATE TABLE aluno(
RA INT PRIMARY KEY,
nome VARCHAR(45),
email VARCHAR(45) CONSTRAINT chkEmail CHECK (email LIKE '%@%'),
fkGrupo INT,
FOREIGN KEY (fkGrupo) REFERENCES grupo (idGrupo)
);

CREATE TABLE avaliacao(
fkGrupo INT,
FOREIGN KEY (fkGrupo) REFERENCES grupo (idGrupo),
fkProfessor1 INT,
FOREIGN KEY (fkProfessor1) REFERENCES professor (idProfessor),
fkProfessor2 INT,
FOREIGN KEY (fkProfessor2) REFERENCES professor (idProfessor),
PRIMARY KEY (fkGrupo, fkProfessor1, fkProfessor2),
dtAvaliacao DATETIME,
nota DECIMAL (4, 2)
);

INSERT INTO professor VALUES
	(null, 'Vivian', 'BD'),
    (null, 'Chola', 'Arq. Comp'),
    (null, 'Fernanda', 'PI'),
    (null, 'Yoshi', 'Algoritmo'),
    (null, 'JP', 'ALgoritmo'),
    (null, 'Monica', 'TI'),
    (null, 'Dan', 'Socioemocional'),
    (null, 'Vera', 'Socioemocional');
    
INSERT INTO grupo VALUES
	(null, 'Ceres', 'Controle de Temp e Umid no armaz de sementes'),
    (null, 'SojaTec', 'Controle de Temp e Umid no armaz de soja'),
    (null, 'HealthCoffe', 'Controle de Temp e Umid no armaz de cafe');
    
INSERT INTO aluno VALUES
	('11111111', 'Bruno Ryu', 'bruno.takahashi@sptech.school', 1),
    ('22222222', 'Estela Polverinni', 'estela.polverinni@sptech.school', 1),
    ('33333333', 'Bruno Pimentel', 'bruno.pimentel@sptech.school', 1),
    ('44444444', 'Maya Ferreita', 'maya.ferreira@sptech.school', 1),
    ('55555555', 'Eric Benficas', 'eric.benficas@sptech.school', 2),
    ('66666666', 'Rafael Aldo', 'rafael.aldo@sptech.school', 2),
    ('77777777', 'Samuel Bryan', 'samuel.bryan@sptech.school', 2);
    
INSERT INTO avaliacao VALUES
	(1, 1000, 1001, '2022-07-11 21:52:20', 9.32),
    (2, 1003, 1004, '2022-07-11 22:30:11', 8.40);
    
SELECT * FROM aluno;
SELECT * FROM grupo;
SELECT * FROM professor;
SELECT * FROM avaliacao;

SELECT * FROM grupo AS g
	JOIN aluno AS a ON a.fkGrupo = g.idGrupo;
    
SELECT avg(nota) FROM avaliacao
	JOIN grupo ON fkGrupo = idGrupo;
    
SELECT min(nota) AS 'Menor nota', max(nota) AS 'Maior nota' FROM avaliacao;

SELECT sum(nota) AS 'Soma Notas' FROM avaliacao;

SELECT * FROM professor AS p
	JOIN avaliacao AS a ON fkProfessor1 = p.idProfessor
    JOIN avaliacao AS aa ON fkProfessor2 = p.idProfessor
    JOIN grupo AS g ON a.fkGrupo = idGrupo;
    
SELECT g.nome AS 'Nome Grupo', p.* FROM professor AS p
	JOIN avaliacao ON fkProfessor1 = idProfessor
    JOIN grupo AS g ON fkGrupo = idGrupo
    WHERE p.nome = 'Vivian';
    
SELECT * FROM professor AS p
	JOIN avaliacao ON fkProfessor1 = idProfessor
    JOIN grupo AS g ON fkGrupo = g.idGrupo
    JOIN aluno AS a ON a.fkGrupo = idGrupo;
    
SELECT count(nota) AS 'Notas Distintas' FROM avaliacao;

SELECT p.nome, sum(a.nota) AS 'Soma Notas', avg(a.nota) AS 'Media Notas' FROM professor AS p
	JOIN avaliacao AS a ON fkProfessor1 = idProfessor
    GROUP BY p.nome;
    
SELECT g.nome, sum(a.nota) AS 'Soma Notas', avg(a.nota) AS 'Media Notas' FROM grupo AS g
	JOIN avaliacao AS a ON fkGrupo = idGrupo
    GROUP BY g.nome;
    
SELECT p.nome, min(a.nota) AS 'Menor Nota', max(a.nota) AS 'Maior Notas' FROM professor AS p
	JOIN avaliacao AS a ON fkProfessor1 = idProfessor
    GROUP BY p.nome;
    
SELECT g.nome, min(a.nota) AS 'Menor Notas', max(a.nota) AS 'Maior Notas' FROM grupo AS g
	JOIN avaliacao AS a ON fkGrupo = idGrupo
    GROUP BY g.nome;
    
-- DROP DATABASE pratica9;