-- exercicio 1

CREATE DATABASE alunoProjeto;
USE alunoPROJETO;

CREATE TABLE projeto(
idProjeto INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
descricao VARCHAR(45)
);

CREATE TABLE aluno(
idAluno INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (45),
telefone VARCHAR(12),
fkProjeto INT,
FOREIGN KEY (fkProjeto) REFERENCES projeto (idProjeto),
fkRepre INT,
CONSTRAINT fkRepresentante FOREIGN KEY (fkRepre) REFERENCES aluno (idAluno)
);

CREATE TABLE acompanhante(
idAcomp INT,
fkAluno INT,
FOREIGN KEY (fkAluno) REFERENCES aluno (idAluno),
PRIMARY KEY (idAcomp, fkAluno),
nome VARCHAR (45),
parentesco VARCHAR (45)
);

INSERT INTO projeto VALUES
(null, 'SeedTec', 'Controle Temperatura e Umidade de Soja'),
(null, 'TeCoffe', 'Controle Temperatura e Umidade de Cafe'),
(null, 'SeedTec', 'Controle Temperatura e Umidade de Semenstes');

INSERT INTO aluno VALUES
(null, 'Bruno', '999999999', 3, null),
(null, 'Estela', '988888888', 3, 1),
(null, 'Nathan', '977777777', 2, null),
(null, 'Rafael', '966666666', 1, null),
(null, 'Pedro', '955555555', 1, 4),
(null, 'Iago', '944444444', 2, 3),
(null, 'Pimentel', '933333333', 3, 1);

INSERT INTO acompanhante VALUES
(1, 1, 'Cristiane', 'mae'),
(2, 1, 'Edson', 'pai'),
(3, 1, 'Yuzo', 'irmao'),
(4, 1, 'Vitor', 'irmao'),
(1, 2, 'Matheus', 'pai');

SELECT * FROM projeto;
SELECT * FROM aluno;
SELECT * FROM acompanhante;

SELECT * FROM aluno 
	JOIN projeto ON fkProjeto = idProjeto;
    
SELECT * FROM aluno
	JOIN acompanhante ON fkAluno = idAluno;
    
SELECT * FROM aluno AS a
	JOIN aluno AS r ON r.fkRepre = a.idAluno;
    
SELECT * FROM aluno AS a
	JOIN projeto AS p ON fkProjeto = idProjeto WHERE p.nome = 'SeedTec';
    
SELECT * FROM aluno
	JOIN projeto ON fkProjeto = idProjeto
    JOIN acompanhante ON fkAluno = idAluno;
    
-- DROP DATABASE alunoProjeto;

-- exercicio 2 

CREATE DATABASE SUS;
USE SUS;

CREATE TABLE campanha(
idCampanha INT PRIMARY KEY AUTO_INCREMENT,
categoria VARCHAR (45),
instituicao VARCHAR (45),
dtFinal DATE

)AUTO_INCREMENT= 500;

CREATE TABLE organizador(
idOrganizador INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (45),
rua VARCHAR (45),
bairro VARCHAR (45),
email VARCHAR (45) CONSTRAINT chkEmail CHECK (email LIKE '%@%'),
fkCamp INT,
FOREIGN KEY (fkCamp) REFERENCES campanha (idCampanha),
fkResp INT,
CONSTRAINT fkResp FOREIGN KEY (fkResp) REFERENCES organizador (idOrganizador)
)AUTO_INCREMENT = 30;

INSERT INTO campanha VALUES
(null, 'alimento', 'Kodomo-no-Sono', '2022-09-20'),
(null, 'benificente', 'Ikoi-no-Sono', '2022-08-19'),
(null, 'higiene', 'Kibou-no-Ie', '2022-03-05'),
(null, 'benificente', 'Okinawa Fest', '2022-08-07');


INSERT INTO organizador VALUES
(null, 'Bruno Ryu', 'Guaipa', 'Vila Leopoldina', 'bruno.takahashi@sptech.school', '500', null),
(null, 'Bruno Pimentel', 'Vila dos Sapos', 'Guaianases', 'bruno.pimentel@sptech.school', '501', null),
(null, 'Estela Polverini', 'Trapicheiro', 'Vila Carrão', 'estela.polverini@sptech.school', '503', null),
(null, 'Henrique Yuzo', 'Guaipa', 'Vila Leopoldina', 'henrique.takahashi@sptech.school', '500', null),
(null, 'Carolina Naomi', 'Imperatriz Leopoldina', 'Vila Leopoldina', 'carolina.naomi@sptech.school', '503', null),
(null, 'Vinicius Yudi', 'Haddock Lobo', 'Paulista', 'vinicius.yudi@sptech.school', '501', null);


UPDATE organizador SET fkResp = '33' WHERE idOrganizador = 30;
UPDATE organizador SET fkResp = '35' WHERE idOrganizador = 31;
UPDATE organizador SET fkResp = '34' WHERE idOrganizador = '32';

SELECT * FROM campanha;
SELECT * FROM organizador;

SELECT * FROM organizador 
	JOIN campanha ON fkCamp = idCampanha;
    
SELECT * FROM organizador
	JOIN campanha ON fkCamp = idCampanha
	WHERE nome = 'Bruno Ryu';
    
SELECT * FROM organizador as o
	JOIN organizador as r ON o.fkResp = r.idOrganizador;
    
SELECT * FROM organizador as o
	JOIN organizador as r ON o.fkResp = r.idOrganizador
	WHERE r.nome = 'Henrique Yuzo';
    
SELECT o.*, c.*, r.* FROM organizador as o
	JOIN campanha AS c ON o.fkCamp = c.idCampanha
    JOIN organizador AS r ON o.fkResp = r.idOrganizador;

-- DROP DATABASE SUS;