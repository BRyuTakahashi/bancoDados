CREATE DATABASE pi;
USE pi;
CREATE TABLE cadastro(
idCadastro INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (40),
telefone VARCHAR(20),
email VARCHAR (40) CONSTRAINT chkEmail CHECK (email LIKE '%@%'),
dtCadastro DATE,
acesso VARCHAR(30) CONSTRAINT chkAcesso CHECK (acesso IN ('total', 'limitado')) DEFAULT 'limitado'
);
DESC cadastro;

INSERT INTO cadastro (nome, telefone, email, dtCadastro, acesso) VALUES
('Bruno Ryu', '(11)91111-1111', 'bruno.takahashi@sptech.school', '2022-05-08', 'total'),
('Erik Benficas', '(11)92222-2222', 'erik.benficas@sptech.school', '2022-07-03', 'limitado'),
('Maya Ferreira', '(11)93333-3333', 'maya.ferreira@sptech.school' ,'2022-08-15', 'total'),
('Samuel Bryan', '(11)94444-4444', 'samuel.bryan@sptech.school', '2022-02-02', 'total'),
('Vitor Hugo', '(11)95555-5555', 'vitor.hugo@stech.school', '2022-05-07', 'limitado'),
('Rafael Alves', '(11)96666-6666', 'rafael.alves@sptech.school', '2022-01-27', 'limitado');

SELECT * FROM cadastro;