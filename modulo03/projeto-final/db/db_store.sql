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

-- criar tabela no banco
CREATE TABLE tb_product(
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    description VARCHAR(100) NOT NULL,
    photo VARCHAR(255) NOT NULL,
    valor FLOAT(5,2) NOT NULL,
    categoria_id INT(11) NOT NULL,
    quantity INT(5) NOT NULL,
    create_at  DATETIME NOT NULL
);

-- para ver a tabela criada podemos utilizar o comando DESC
DESC tb_product;

-- inserir alguns dados na tabela
INSERT INTO tb_category (name, description)
VALUES
('Informatica', 'Produtos de informatica e peças para computador'),
('Escritório', 'Canetas, cadernos, livros, etc.'),
('Eletronicos','TVs, Som, etc');

-- inserir dados na tabela produtos tb_product
INSERT INTO tb_product(name, description, photo, valor, categoria_id, quantity, create_at)
VALUES
('Teclado', 'Teclado mecanico RGB', 'https://m.media-amazon.com/images/I/71QejoetFdL._AC_SY450_.jpg', '109.90', '1', '10', '2022-07-12 12:24:01'),
('Headset', 'Fone de ouvido com microfone', 'https://m.media-amazon.com/images/I/51MkZnk08+L._AC_SX450_.jpg', '59.00', '1', '15', '2022-07-12 12:24:01'),
('Canetas coloridas', 'Canetas esferograficas coloridas', 'https://m.media-amazon.com/images/I/51CJKOq-VTL._AC_SX450_.jpg', '33.00', '2','20', '2022-07-12 12:24:01'),
('TV Led 43', 'Tv de led 43 polegadas 4k', 'https://m.media-amazon.com/images/I/71PxpVKqzkL._AC_SY450_.jpg', '999.03', '3', '10', '2022-07-12 12:24:01'),
('Caderno 1 Matéria - Heróis', 'Caderno de 1 matéria com capa e adesivos de heróis', 'https://m.media-amazon.com/images/I/71LXhG535+L._AC_SY450_.jpg', '79.99', '2', '30', '2022-07-12 12:24:01'),
('Radio Bluetooth 50w', 'Rádio AM/FM com conexão Bluetooth potencia de 50w', 'https://m.media-amazon.com/images/I/81Mwm6jbv9L._AC_SX450_.jpg', '129.90', '3', '17', '2022-07-12 12:24:01');