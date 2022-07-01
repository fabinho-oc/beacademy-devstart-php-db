-- Para crar um banco de dados --
CREATE DATABASE db_escola;

-- selecionar o banco de dados -- 
USE db_escola;

--CRIAR TABELAS
--regra "UNIQUE", não permite repetir os dados
CREATE TABLE tb_professor(
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE tb_professor(
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) NOT NULL,
    email VARCHAR(255) NOT NULL
);



--DROP TABLE - EXCLUIR UMA TABELA
DROP TABLE tb-professor;


CREATE TABLE tb_aluno(
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) NOT NULL,
    email VARCHAR(255) NOT NULL,
    matricula VARCHAR(10) NOT NULL
);

--INSERIR DADOS
INSERT INTO tb_professor(nome, email, cpf ) -- a ordem que definir no insert é que vai valer
VALUES (
    'Alessandro', 'ale@e-mail.com', '12312312312'
);

INSERT INTO tb_professor(nome, email, cpf ) -- a ordem que definir no insert é que vai valer
VALUES (
    'Bruno', 'bruno@e-mail.com', '98765432112'
);

--exibir o que consta na tabela professor / SELECIONAR OS DADOS--
SELECT * FROM tb_professor;

-- tarefa na aula 04
--pesquisar: chave primaria e chave candidata
--pesquisar UUID