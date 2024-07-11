create database sistema_gestao;
use sistema_gestao;
describe clientes;

-- select em todas as tabelas 

select * from produtos;
select * from pedidos;
select * from clientes;
select * from estoque;

-- DESATIVANDO O SQL SAFE UPDATES 

SET SQL_SAFE_UPDATES = 0;

-- 1°
create table clientes (
	id int primary key auto_increment,
	nome  varchar(40) not null,
    telefone varchar(20),
    data_nascimento date,
    estado_civil enum('S','C'),
    sexo enum('M','F'),
    cidade varchar(30),
    idade int,
    endereco varchar(100)
    );
drop table clientes;
select * from clientes;     

-- 2°
create table pedidos(
	id int primary key auto_increment,
    id_cliente int not null,
    produto varchar(50),
    quantidade int,
    data_da_venda date
);
drop table pedidos;
-- 3°
create table produtos(
	id int primary key auto_increment,
    nome varchar(50),
    preco decimal(10,2)
);
drop tables produtos;
alter table produtos modify preco decimal(10,3);
-- 4°

create table estoque(
	produto_id int not null,
	quantidade_disponivel int not null
);
drop table estoque;


insert into clientes
 (nome,telefone,data_nascimento,estado_civil,sexo,cidade,idade,endereco) values
 ('miguel','21994911088','20040225','C','M','São Paulo','20','Rua santa Luzia,400,bairro do carmo'),
 ('matheus','86994923100','20030410','S','M','Parnaíba','20','Rua massa fera, 320, bairro elaine'),
 ('danilo','86994945101','20040410','S','M','São joão dos pilãos','20','Rua santana do parnaíba,302,bairro sao jorge'),
 ('Naryara','86994329160','19990301','C','F','Parnaíba','25','rua sei lá,3002,bairro danilo soares'),
 ('lutiara','86999139921','20040512','C','F','Piriripiri','20','rua gabriel rocha,20,bairro sao francisco'),
 ('gabriel','86994129921','20041211','S','M','Parnaíba','19','rua matheus monteiro,22,bairro geregotango'),
 ('william','86994399801','20000714','C','M','Barro duro','25','rua alanzoka,40,bairro silva sauro'),
 ('Ana gabriele','59994914222','20031110','C','M','Itapiranga','20','Rua alberto Silva,20,B. do carmo'),
 ('Avelino silva','86994429352','19920808','C','M','Teresina','32','Rua Monteiro Lobato,302,bairro Santos alves'),
 ('vitor emanuel','86994429031','19850912','S','M','Tutoia','38','Rua Ceará,506,Bairro Piauí');
 


insert into produtos (id,nome,preco) values
(1,'Televisao Samsung OLED FULL HD','1200.00'),
(2,'Samsung Galaxy s4','899.99'),
(3,'LG K10+','789.90'),
(4,'Microondas Samsung','899.90'),
(5,'Aspirador de Pó Mallory','599.90'),
(6,'Mouse Dell','89.90'),
(7,'Monitor Dell 60/50hz','790.90'),
(8,'Gabinete Ninja black','199.90'),
(9,'Caderno Cadersil 20m','38.90'),
(10,'Caneta Azul Pilot','9.99');

update produtos set preco = preco + (0.1*preco) where id = 10;
select * from produtos;

insert into pedidos (id_cliente,produto,quantidade,data_da_venda) values
(1,'Televisao Samsung OLED FULL HD',1,'2024-06-12'),
(2,'Samsung Galaxy s4',1,'2024-06-13'),
(3,'LG K10+',1,'2024-06-14'),
(4,'Microondas Samsung',1,'2024-06-13'),
(5,'Aspirador de Pó Mallory',1,'2024-06-13'),
(6,'Mouse Dell',1,'2024-06-13'),
(7,'Monitor Dell 60/50hz',1,'2024-06-15'),
(8, 'Mouse Pad', 2,'2024-06-29'),
(9, 'Caneta Azul Pilot',1,'2024-07-01'),
(10, 'Gabinete Ninja black',1,'2024-06-03');

insert into estoque values
(1,10),
(2,20),
(3,20),
(4,15),
(5,24),
(6,40),
(7,50),
(8,10),
(8,30),
(10,10),
(11,11);

-- operações CRUD e consultas SQL - Operações CRUD

-- INSERÇÃO
INSERT INTO clientes (	id,nome,telefone,data_nascimento,estado_civil,sexo,cidade,idade) values
	('1','miguel sousa silva', '86994911088','20040225','C','M','São Paulo','20');


-- SELEÇÃO
select * from clientes;
select * from estoque;

-- ATUALIZAÇÃO
update clientes set nome = 'Miguel de sousa da silva' where id = '1';

-- EXCLUSÃO
delete from estoque where produto_id = '11';
drop table estoque;



-- operações CRUD e consultas SQL - 4 Operações crud


-- operações CRUD e consultas SQL - 5 consultas SQL avançadas

SELECT * FROM clientes WHERE idade > 30; 
Delete from pedidos where cliente_id = '3' ;
update produtos set preco =  preco + (preco * 0.1);



-- operações CRUD e consultas SQL - 6.consultas expecíficas
select data_da_venda from pedidos where data_da_venda between date(20240610) and date(20240630);
select * from produtos where preco order by preco desc;
select * from estoque where quantidade_disponivel < 10;

 -- Parte 5 - 9.AGREGAÇÕES E FUNÇÕES
 
 select count(*) as 'QUANTIDADE DE CLIENTES' from clientes;
 select sum(quantidade) as 'SOMA DOS PEDIDOS' from pedidos;
 select avg(idade) as 'média da idades' from clientes;
 SELECT MIN(idade) as 'Idade Mínima', MAX(idade) as 'Idade Máxima'  FROM clientes;
 select count(distinct cidade)as 'Quantidade de cidades' from clientes;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
 
 -- testes------------------=============================
 
 select sum(idade) as 'Soma de todas as Idades',count(id) as 'Quantidade de pessoas',avg(idade) as 'Média das Idades',count(distinct sexo) as 'Quantidade de sexos' from clientes; 
 
 -- normalização que o professor passou--------------------
 
 CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(15),
    compras VARCHAR(255) -- Lista de itens comprados (não atômica)
);

drop table clientes;


-- Normalizando o Banco de Dados-----------

create table clientes_1FN(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(15)
);
insert into clientes_1FN (id,nome,telefone) values();
select * from clientes_1FN;



create table compras (
	id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
	item varchar(100),
    FOREIGN KEY(cliente_id) references clientes_1FN(id)
);
select * from compras;


-- Inserção de Dados
INSERT INTO clientes_1FN (nome, telefone)
select nome, telefone from clientes;

INSERT INTO compras (id, cliente_id, item) VALUES 
('1', '4', 'Televisao Samsung OLED FULL HD'),
('2', '5', 'Samsung Galaxy s4'),
('3', '1', 'Microondas Samsung'),
('4', '3', 'Aspirador de Pó Mallory'),
('5', '2', 'Aspirador de Pó Mallory'),
('6', '6', 'Gabinete Ninja black'),
('7', '8', 'Caneta Azul Pilot'),
('8', '9', 'Samsung Galaxy s4'),
('9', '7', 'Caderno Cadersil 20m');



INSERT INTO clientes (nome, telefone, compras) VALUES
('João', '12345678', 'TV, Geladeira'),
('Maria', '87654321', 'Máquina de Lavar');


-- Tabela pedidos com Dependências Parciais: Esta tabela viola a Segunda Forma Normal (2FN) porque o campo nome_cliente depende parcialmente da chave primária cliente_id.

CREATE TABLE pedidos (
    pedido_id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    nome_cliente VARCHAR(100), -- Dependência parcial
    data_pedido DATE,
    valor DECIMAL(10, 2)
);



INSERT INTO pedidos (cliente_id, nome_cliente, data_pedido, valor) VALUES
(1, 'João', '2023-01-01', 100.00),
(2, 'Maria', '2023-01-02', 200.00);


-- Tabela produtos com Dependências Transitivas: Esta tabela viola a Terceira Forma Normal (3FN) porque o campo telefone_fornecedor depende do campo fornecedor, que não é uma chave primária.

CREATE TABLE produtos (
    produto_id INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100),
    fornecedor VARCHAR(100),
    telefone_fornecedor VARCHAR(15) -- Dependência transitiva
);
select * from pedidos;

INSERT INTO produtos (nome_produto, fornecedor, telefone_fornecedor) VALUES
('TV', 'LG', '12345678'),
('Geladeira', 'Samsung', '87654321');

-- exclusão de tabelas 
drop table clientes;
drop table produtos;
drop tables produtos, pedidos, clientes;

-- 2 forma normal
create table clientes_2FN(
	id int auto_increment primary key,
    nome varchar(100)
);
select * from clientes_2FN;

create table pedidos_2FN(
	pedido_id int auto_increment primary key,
    cliente_id int,
    data_pedido date,
    valor decimal (10,2),
    foreign key (cliente_id) references clientes_2FN(id)
);
select * from pedidos_2FN;

insert into clientes_2FN (id, nome)
select cliente_id, nome_cliente from pedidos group by cliente_id, nome_cliente;

insert into pedidos_2FN(cliente_id, data_pedido, valor)
select cliente_id, data_pedido, valor from pedidos;

-- 10/07/2024

create table fornecedores(
	id int auto_increment primary key,
    nome_fornecedor varchar(100),
    telefone varchar(15)
);

-- inserção de dados nos fornecedores

INSERT INTO fornecedores (id, nome_fornecedor, telefone) VALUES 
('1', 'BOI BRAVO', '59995919099'),
 ('2', 'NACIONAL GÁS', '86994911055'),
 ('3', 'NESTLÉ', '2133229950'),
 ('4', 'TAMPICO', '85998190322'),
 ('5', 'TANG', '19981142260'),
 ('6', 'COCA-COLA', '2197540960'),
 ('7', 'SALSITOS', '50981607515'),
 ('8', 'NISSIM', '85981663524');


select * from fornecedores;
drop table fornecedores;

create table produtos_3FN(
	produto_id int auto_increment primary key,
    nome_produto varchar(100),
    fornecedor_id int,
    foreign key (produto_id) references fornecedores(id)
);

select * from produtos_3FN;
drop table produtos_3FN;