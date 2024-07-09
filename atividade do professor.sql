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