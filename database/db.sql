create database db_sa;
use db_sa;

create table usuario (
    id_usuario int primary key auto_increment,
    nome varchar(100) not null,
    email varchar(100) not null unique,
    senha_hash varchar(255) not null
);

create table cliente (
    id_cliente int primary key auto_increment,
    nome varchar(100) not null,
    telefone varchar(20) not null,
    endereco varchar(150) not null
);

create table pastel (
    id_pastel int primary key auto_increment,
    sabor varchar(60) not null,
    tipo varchar(10) not null,
    preco decimal(6, 2) not null
);

create table pedido (
    id_pedido int primary key auto_increment,
    id_cliente int not null,
    id_pastel int not null,
    data_pedido datetime not null,
    quantidade int not null,
    foreign key (id_cliente) references cliente(id_cliente),
    foreign key (id_pastel) references pastel(id_pastel)
);

insert into usuario (nome, email, senha_hash) values
('Admin', 'admin@example.com', '$2b$10$8K1p/aD7c9e3f4g5h6i7j8k9l0m1n2o3p4q5r6s7t8u9v0w1x2y3z4'),
('Teste', 'test@example.com', '$2b$10$8K1p/aD7c9e3f4g5h6i7j8k9l0m1n2o3p4q5r6s7t8u9v0w1x2y3z4'),
('Joao Augusto', 'joao@example.com', '$2b$10$8K1p/aD7c9e3f4g5h6i7j8k9l0m1n2o3p4q5r6s7t8u9v0w1x2y3z4');

insert into cliente (nome, telefone, endereco) values
('Maria Silva', '123456789', 'Rua A, 123'),
('Carlos Souza', '987654321', 'Rua B, 456'),
('Ana Pereira', '555555555', 'Rua C, 789');

insert into pastel (sabor, tipo, preco) values
('Frango', 'Salgado', 15.00),
('Calabresa', 'Salgado', 15.00),
('Queijo', 'Salgado', 15.00),
('Chocolate', 'Doce', 12.00),
('Morango', 'Doce', 12.00);