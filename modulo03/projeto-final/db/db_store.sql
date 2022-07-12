-- criar banco de dados
CREATE DATABASE db_store;

-- selecionar o banco
USE db_store;

-- criar tabela no banco
CREATE TABLE tb_category(
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    description VARCHAR(100) NOT NULL
);

-- inserir alguns dados na tabela
INSERT INTO tb_category (name, description)
VALUES
('Informatica', 'Produtos de informatica e peças para computador'),
('Escritório', 'Canetas, cadernos, livros, etc.'),
('Eletronicos','TVs, Som, etc');
