show databases;

create database if not exists ecommerce;

use ecommerce;

CREATE TABLE Terceiro_Vendedor(
	Terceiro_Vendedor_id smallint unsigned,
	razal_social varchar(45),
	Lugar varchar(45),
    constraint pk_Terceiro_Vendedor primary key (Terceiro_Vendedor_id)
);

desc Terceiro_Vendedor;

create table Terceiro_Vendedor_Produtos(
	Terceiro_Vendedor_id smallint unsigned,
	Terceiro_Vendedor_Produtoid smallint unsigned,
    Quantidade int,
    constraint pk_Terceiro_Vendedor_Produtos primary key (Terceiro_Vendedor_id, Terceiro_Vendedor_Produtoid, Quantidade),
    constraint fk_Terceiro_Vendedor_Produtos_Terceiro_Vendedor_id foreign key (Terceiro_Vendedor_id), 
    references Terceiro_Vendedor(Terceiro_Vendedor_id)
);

create table Produto(
	Produto_id int unsigned,
	Categoria varchar(45),
	Descricao varchar(45),
	Valor varchar(45),
    constraint pk_Produto_id primary key (Produto_id, Categoria, Descricao, Valor), 
    references Terceiro_Vendedor(Terceiro_Vendedor_id)
);

create table Produto_Pedido(
	Produto_id int unsigned,
	Pedido_Produto_id int unsigned,
	Quantidade int,
    constraint pk_Produto_id primary key (Produto_id, Pedido_Produto_id, Quantidade), 
    references Produto(Produto_id)
);

create table Pedido(
	Pedido_id int unsigned,
	Status VARCHAR(45),
	Descricao VARCHAR(45),
	Cliente_id int,
	Frete FLOAT,
    constraint pk_Pedido_id primary key (Pedido_id, Status, Descricao, Cliente_id, Frete),
	constraint pk_Cliente_id primary key (Pedido_id, Status, Descricao, Cliente_id, Frete),
    references Produto(Produto_id)
);

create table Cliente(
	Cliente_id int unsigned,
	Nome VARCHAR(45),
	Identificacao VARCHAR(45),
	Email VARCHAR(45),
    constraint pk_Cliente_id primary key (Cliente, Nome, Identificacao,Email ),
    references Pedido(Pedido_id)
);

create table Produto_Has_Estoque(
	Produto_id int unsigned,
	Estoque_id int unsigned,
	Quantidade int,
    constraint pk_Pedido_id primary key (Produto_id, Estoque_id, Quantidade),
	constraint pk_Estoque_id primary key (Produto_id, Estoque_id, Quantidade),
    references Pedido(Pedido_id)
);

create table Estoque(
	Estoque_id int unsigned,
	Lugar VARCHAR(45),
    constraint pk_Estoque_id primary key (Estoque_id, Lugar),
    references Pedido(Pedido_id)
);

create table Produto_Fornecedor(
	Produto_Fornecedor_id int unsigned,
	Produto_Produto_id int unsigned,
    constraint pk_Produto_Fornecedor_id primary key (Produto_Fornecedor_id),
	constraint pk_Fornecedor_id primary key (Produto_Produto_id),
    references Pedido(Pedido_id)
);

create table Fornecedor(
	Fornecedor_id int unsigned,
	Razao_Social VARCHAR(45),
	CNPJ VARCHAR(45),
    constraint pk_Fornecedor_id primary key (Fornecedor_id),
    references Pedido(Pedido_id)
);