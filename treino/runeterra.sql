CREATE DATABASE treino;
USE treino;
CREATE TABLE runeterra(
idChamps INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(40),
regiao VARCHAR (30) CONSTRAINT chkRegiao CHECK (regiao IN ('Demacia', 'Noxus', 'Ionia', 'Targon', 'Shurima'))
);

INSERT INTO runeterra (nome, regiao) VALUES
('Garen', 'Demacia'),
('Lux', 'Demacia'),
('Sylas', 'Demacia'),
('Darius', 'Noxus'),
('Draven', 'Noxus');

SELECT * FROM runeterra;

ALTER TABLE runeterra ADD COLUMN fkClasse INT;
ALTER TABLE runeterra ADD FOREIGN KEY (fkClasse) REFERENCES classe(idClasse);

UPDATE runeterra SET fkClasse = 1 WHERE idChamps = 1;
UPDATE runeterra SET fkClasse = 2 WHERE idChamps = 2;
UPDATE runeterra SET fkClasse = 2 WHERE idChamps = 3;
UPDATE runeterra SET fkClasse = 1 WHERE idChamps = 4;
UPDATE runeterra SET fkClasse = 3 WHERE idChamps = 5;

SELECT* FROM runeterra;

SELECT nome, regiao, tipo FROM runeterra JOIN arma ON idClasse =fkClasse;
