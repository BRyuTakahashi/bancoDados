-- exercicio 1

CREATE DATABASE cobasi;
USE cobasi;

CREATE TABLE cliente(
idCliente INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
telefoneFixo VARCHAR(45),
celular VARCHAR(45),
rua VARCHAR(45),
bairro VARCHAR(45),
numero INT
);

CREATE TABLE pet(
idPet INT AUTO_INCREMENT,
nome VARCHAR(45),
tipo VARCHAR(45) CONSTRAINT chkTipo CHECK (tipo IN ('Cachorro', 'Gato', 'Passaro', 'Outros')),
raca VARCHAR(45),
dtNasc DATE,
fkCliente INT,
PRIMARY KEY (idPet, fkCliente),
FOREIGN KEY (fkCliente) REFERENCES cliente (idCliente)
)AUTO_INCREMENT = 101;

INSERT INTO cliente VALUES
(null, 'Bruno Takahashi', null, '999999999', 'Rua Guaipa', 'Vila Leopoldina', '452'),
(null, 'Yuzo Takahashi', null, '988888888', 'Rua Guaipa', 'Vila Leopoldina', '452'),
(null, 'Namie Nagata', null, '977777777', 'Rua Hadock Lobo', 'Paulista', '54'),
(null, 'Arthur Yo', null, '966666666', 'Rua Consolação', 'Higienópolis', '245'),
(null, 'Naomi Nagata', null, '955555555', 'Rua Hadock Lobo', 'Paulista', '54');

INSERT INTO pet VALUES
(null, 'Luffy', 'Cachorro', 'Maltez', '2014-05-06', 1),
(null, 'Amy', 'Gato', 'SRD', '2019-08-22', 1),
(null, 'Yumi', 'Gato', 'SRD', '2019-08-22', 2),
(null, 'Haru', 'Gato', 'SRD', '2020-04-10', 1),
(null, 'Yuki', 'Gato', 'SRD', '2020-04-10', 2),
(null, 'Luna', 'Gato', 'SRD', '2018-11-23', 3),
(null, 'Mel', 'Gato', 'SRD', '2018-11-23', 3),
(null, 'Pepper', 'Gato', 'SRD', '2018-11-23', 5),
(null, 'Mona', 'Cachorro', 'Golden', '2016-04-04', 4);

SELECT * FROM cliente;

SELECT * FROM pet;

ALTER TABLE cliente MODIFY COLUMN nome VARCHAR(50);

SELECT * FROM pet WHERE tipo = 'Cachorro';

SELECT nome, dtNasc FROM pet;

SELECT * FROM pet ORDER BY nome;

SELECT * FROM cliente ORDER BY bairro DESC;

SELECT * FROM pet WHERE nome LIKE 'M%';

SELECT * FROM cliente WHERE nome LIKE '% Nagata';

UPDATE cliente SET celular = '971628872' 
	WHERE idCliente = '1';

SELECT * FROM cliente;

SELECT * FROM pet
	JOIN cliente ON fkCliente = idCliente;
    
SELECT * FROM pet
	JOIN cliente ON fkCliente = idCliente
    WHERE cliente.nome LIKE 'Bruno %';
    
DELETE FROM pet WHERE idPet = '108';

SELECT * FROM pet;

DROP TABLE pet, cliente;

-- DROP DATABASE cobasi;

-- exercicio 2

CREATE DATABASE takahashi;
USE takahashi;

CREATE TABLE pessoa(
idPessoa INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
dtNasc DATE,
profissao VARCHAR(45)
);

CREATE TABLE gasto(
idGasto INT AUTO_INCREMENT,
dtCompra DATE,
valor DECIMAL(10,2),
descricao VARCHAR(45),
fkPessoa INT,
PRIMARY KEY (idGasto, fkPessoa),
FOREIGN KEY (fkPessoa) REFERENCES pessoa(idPessoa)
);

INSERT INTO pessoa VALUES 
(null, 'Bruno Takahashi', '2000-05-08', 'Designer'),
(null, 'Yuzo Takahashi', '2002-06-11', 'ADS'),
(null, 'Cristiane Takahashi', '1971-01-17', 'Adm'),
(null, 'Edson Takahashi', '1971-12-30', 'Adm'),
(null, 'Vitor Takahashi', '2011-03-14', null);

INSERT INTO gasto VALUES
(null, '2022-09-27', '20.00', 'Recarga Starbucks', '1'),
(null, '2022-09-23', '120.00', 'iFood', '2'),
(null, '2022-09-20', '300.00', 'Gasolina', '4'),
(null, '2022-08-30', '113.69', 'Mercado', '3'),
(null, '2022-09-25', '35.00', 'Almoço', '1');

SELECT * FROM pessoa;

SELECT * FROM gasto;

SELECT * FROM pessoa 
	WHERE profissao = 'Designer';

SELECT * FROM pessoa
	JOIN gasto ON idPessoa = fkPessoa;
    
SELECT * FROM pessoa
	JOIN gasto ON idPessoa = fkPessoa
    WHERE pessoa.nome LIKE 'Yuzo %';
    
UPDATE gasto SET valor = '50.00'
	WHERE idGasto = '1';
    
UPDATE gasto SET valor = '137.26'
	WHERE idGasto = '4';
    
UPDATE gasto SET valor = '32.50'
	WHERE idGasto = '5';
    
DELETE FROM gasto 
	WHERE idGasto = '3';
    
DELETE FROM gasto 
	WHERE idGasto = '2';
    
-- DROP DATABASE takahashi;
    