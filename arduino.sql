CREATE DATABASE pi;
USE pi;
CREATE TABLE dados_coletados(
id INT PRIMARY KEY AUTO_INCREMENT,
tempC DECIMAL (10,1),
umid int,
dtColeta datetime
);

INSERT INTO dados_coletados (tempC, umid, dtColeta) VALUES
(23.4, 70, '2022-08-23 15:33'),
(23.7, 68, '2022-08-23 15:34'),
(23.6, 69, '2022-08-23 15:35'),
(23.6, 70, '2022-08-23 15:36'),
(23.7, 71, '2022-08-23 15:37'),
(23.7, 68, '2022-08-23 15:38'),
(23.8, 72, '2022-08-23 15:39'),
(23.8, 71, '2022-08-23 15:40');
 
SELECT * FROM dados_coletados;

SELECT tempC, umid, dtColeta FROM dados_coletados;

/*
TRUNCATE TABLE dados_coletados;

DROP TABLE dados_coletados;
*/