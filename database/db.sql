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