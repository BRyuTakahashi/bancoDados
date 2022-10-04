CREATE DATABASE treino;
USE treino;
CREATE TABLE arma(
idClasse INT PRIMARY KEY AUTO_INCREMENT,
tipo VARCHAR (40) CONSTRAINT chkClasse CHECK (tipo IN ('Lutador', 'Mago', 'Atirador', 'Tank'))
);

INSERT INTO arma (tipo) VALUES 
('Lutador'),
('Mago'),
('Atirador'),
('Tank');

SELECT * FROM arma;