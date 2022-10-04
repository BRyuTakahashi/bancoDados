CREATE DATABASE pet;
USE pet;

CREATE TABLE cliente (
idCliente INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
telefone CHAR(10),
celular CHAR (11),
endereco VARCHAR(45)
);

CREATE TABLE pet(
idPet INT AUTO_INCREMENT,
nome VARCHAR(45),
tipo VARCHAR(45) CONSTRAINT chkTipo CHECK (tipo IN ('cachorro', 'gato', 'passaro')),
raca VARCHAR(45),
dtNasc DATE,
fkCliente INT, FOREIGN KEY (fkCliente) REFERENCES cliente(idCliente), PRIMARY KEY (idPet, fkCliente)
) AUTO_INCREMENT = 101;

INSERT INTO cliente (nome, telefone, celular, endereco) VALUES
('Bruno Takahashi', '1199999999', '11999999999', 'Rua Guaipa 452'),
('Henrique Takahashi', '1188888888', '11988888888', 'Rua Machado Pedrosa 47'),
('Naomi Nagata', '1177777777', '11966666666', 'Rua Hadock Lobo');

SELECT * FROM cliente;

INSERT INTO pet VALUES
(null, 'Yumi', 'gato', 'SRD', '2022-09-13', '2'),
(null, 'Amy', 'gato', 'SRD', '2022-09-13', '1'),
(null, 'Haru', 'gato', 'SRD', '2020-05-23', '1'),
(null, 'Yuki', 'gato', 'SRD', '2022-05-23', '2'),
(null, 'Luffy', 'cachorro', 'SRD', '2011-05-07', '1'),
(null, 'Ohagi', 'gato', 'SRD', '2016-04-22', '3'),
(null, 'Kanna', 'gato', 'SRD', '2021-11-13', '3');

SELECT * FROM cliente;

SELECT * FROM pet;

SELECT * FROM cliente JOIN pet ON idCliente = fkCliente;

ALTER TABLE cliente MODIFY COLUMN nome VARCHAR(50);

SELECT * FROM pet WHERE tipo = 'cachorro';

SELECT nome, dtNasc FROM pet;

SELECT * FROM pet ORDER BY nome;

SELECT * FROM cliente ORDER BY endereco DESC;

SELECT * FROM pet WHERE nome LIKE 'Y%';

