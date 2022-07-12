--Comando de acesso: mariadb -u root -p

USE db_escola;

-- inserir 1 registro --
INSERT INTO tb_professor (nome, email, cpf)
VALUES ('Chiquim da Silva', 'chiquim@email.com', '12212312312');

-- inserir muitos registros ao mesmo tempo --
INSERT INTO tb_professor (nome, email, cpf)
VALUES 
('Zezim da Silva', 'zezim@email.com', '22212312312'),
('Mario da Silva', 'mario@email.com', '32212312312'),
('Luiz da Silva', 'luiz@email.com', '42212312312');

--excluir registro --
DELETE FROM tb_professor WHERE id='1';

--excluir todos -- 
DELETE FROM tb_professor;

--editar dados de todos os registros da tabela--
UPDATE tb_professor SET nome='Luiz da Caucaia';

--editar especificamente uma informação em uma linha especifica--
UPDATE tb_professor SET nome='Luiz da Caucaia' WHERE cpf='42212312312';

-- Selecionar todos os dados de todos professores -- 
SELECT * FROM tb_professor;

-- Selecionar todos os dados do professor de id = '5' -- 
SELECT * FROM tb_professor WHERE id='5';

-- Selecionar alguns dados de todos os professores --
SELECT nome, cpf FROM tb_professor;

-- selecionar alguns dados do professor de id > '5'
SELECT nome, cpf FROM tb_professor WHERE id >'5';