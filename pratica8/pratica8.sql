CREATE DATABASE venda;
USE venda;

CREATE TABLE produto(
idProduto INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
descricao VARCHAR(45),
preco DECIMAL(6,2)
);

CREATE TABLE venda(
idVenda INT AUTO_INCREMENT,
total DECIMAL(6,2),
dtCompra DATE,
fkCliente INT,
PRIMARY KEY (idVenda, fkCliente),
FOREIGN KEY (fkCliente) REFERENCES cliente (idCliente)
);

CREATE TABLE cliente(
idCliente INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
email VARCHAR(45) CONSTRAINT chkEmail CHECK (email like ('%@%')),
fkRecomendacao INT, 
FOREIGN KEY (fkRecomendacao) REFERENCES cliente (idCliente)
);

CREATE TABLE endereco(
idEndereco INT PRIMARY KEY AUTO_INCREMENT,
rua VARCHAR(45),
numero INT,
complemento VARCHAR(45),
cep INT,
bairro VARCHAR(45),
cidade VARCHAR(45)
);

CREATE TABLE vendaTotal(
quantidade INT,
fkProduto INT,
FOREIGN KEY (fkProduto) REFERENCES produto (idProduto),
fkVenda INT,
FOREIGN KEY (fkVenda) REFERENCES venda (idVenda),
PRIMARY KEY (fkProduto, fkVenda)
);

CREATE TABLE enderecoCompleto(
fkEndereco INT,
FOREIGN KEY (fkEndereco) REFERENCES endereco(idEndereco),
fkCliente INT,
FOREIGN KEY (fkCliente) REFERENCES cliente(idCliente),
PRIMARY KEY (fkEndereco, fkCliente)
);

INSERT INTO produto VALUES
	(null, 'take', 'camiseta', '59.90'),
    (null, 'sakura', 'camiseta', '59.90'),
    (null, 'koi', 'camiseta', '59.90');
    
INSERT INTO  endereco VALUES
	(null, 'Rua Guaipa', 452, 'Apartamento',  '05089000', 'Vila Leopoldina', 'SP'),
    (null, 'Rua Hadock Lobo', 11, 'predio', '00000000', 'Paulista', 'SP'),
    (null, 'Rua Machado Pedrosa', 57, 'casa branca', '11111111', 'Jardim Sao Paulo', 'SP');

INSERT INTO cliente VALUES
	(null, 'Bruno Ryu', 'bruno.takahashi@sptech.school', null),
    (null, 'Estela', 'estela@sptech.school', null),
    (null, 'Bruno Pimentel', 'bruno.pimentel@sptech.school', 1),
    (null, 'Maya Ferreira', 'maya@sptech.school', 1);
    
INSERT INTO venda VALUES
	(null, '59.90', '2022-10-30', 1),
    (null, '120.00', '2022-02-20', 3),
    (null, '59.90', '2022-05-08', 2),
    (null, '120.00', '2021-05-08', 1);
    
INSERT INTO enderecoCompleto VALUES
	(1, 1),
    (2, 1),
    (3, 2),
    (2, 3);
    
INSERT INTO vendaTotal VALUES
	(1, 2, 1),
    (2, 2, 2),
    (1, 1, 3);
    
SELECT * FROM cliente;
SELECT * FROM venda;
SELECT * FROM produto;
SELECT * FROM endereco;
SELECT * FROM enderecoCompleto;
SELECT * FROM vendaTotal;

SELECT * FROM cliente
	 JOIN venda ON fkCliente = idCliente;
     
SELECT * FROM cliente
	JOIN venda ON fkCliente = idCliente
	WHERE nome = 'Bruno Ryu';
    
SELECT * FROM cliente AS c
	JOIN cliente AS r ON c.fkRecomendacao = r.idCliente;
    
SELECT * FROM cliente AS c
	JOIN cliente AS r ON c.fkRecomendacao = r.idCliente
    WHERE r.nome = 'Bruno Ryu';
    
SELECT * FROM cliente AS c
	LEFT JOIN cliente AS r ON c.fkRecomendacao = r.idCliente
    JOIN venda ON fkCliente = c.idCliente
    JOIN vendaTotal ON fkVenda = idVenda
    JOIN produto ON fkProduto = idProduto;
    
SELECT v.dtCompra, p.nome, vT.quantidade  FROM venda AS v
    JOIN vendaTotal AS vT ON fkVenda = idVenda
    JOIN produto AS p ON fkProduto = idProduto;
    
SELECT p.nome, p.preco, sum(v.quantidade) AS quantidade FROM produto AS p
	LEFT JOIN vendaTotal AS v ON fkProduto = idProduto;
    
INSERT INTO cliente VALUE
	(null, 'Henrique Yuzo', 'henrique.yuzo@sptech.school', 2);
SELECT * FROM cliente AS c
    LEFT JOIN venda ON fkCliente = c.idCliente;
    
SELECT max(preco) AS 'Maior Preco', min(preco) AS 'Menor Preco' FROM produto;

SELECT sum(preco) AS 'Soma Preco', AVG(preco) AS 'Media Preco' FROM produto;

SELECT count(preco) > AVG(preco) AS 'Produtos com precos acima da média' FROM produto;

SELECT sum(preco) AS 'Soma Precos' FROM produto;

