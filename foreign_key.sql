USE faculdade1adsc;

SHOW TABLES;
DESC aluno;
DESC empresa;

SELECT* FROM empresa;

-- criando a chave estrangeira (FOREIGN KEY)
ALTER TABLE aluno ADD fkEmpresa int;
ALTER TABLE aluno ADD FOREIGN KEY (fkEmpresa)
	REFERENCES empresa(id);
    
SELECT * FROM aluno;
    
UPDATE aluno SET fkEmpresa = 1 WHERE ra = '01222151';

UPDATE aluno SET fkEmpresa = 2 WHERE ra = '01222996';

-- nosso primeiro join
SELECT * FROM aluno JOIN empresa ON id = fkEmpresa;

SELECT nomeAluno, nome FROM aluno JOIN empresa ON id = fkEmpresa;

-- SELECT nomeAluno as Aluno, nome as Empresa FROM aluno JOIN empresa ON id = fkEmpresa;

