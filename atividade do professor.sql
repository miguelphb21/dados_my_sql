create database sistema_gestao;
use sistema_gestao;
describe clientes;



-- 1°
create table clientes (
	id int primary key auto_increment,
	nome  varchar(40) not null,
    telefone varchar(20),
    data_nascimento date,
    estado_civil enum('S','C'),
    sexo enum('M','F'),
    cidade varchar(30),
    idade int
    );
-- 2°
create table pedidos(
	id int primary key auto_increment,
    id_cliente int not null,
    produto varchar(50),
    quantidade int
);
drop table pedidos;
-- 3°
create table produtos(
	id int primary key auto_increment,
    nome varchar(50),
    preco decimal(10,2)
);

-- 4°

create table estoque(
	produto_id int not null,
	quantidade_disponivel int not null
);
drop table estoque;


insert into clientes
 (nome,telefone,data_nascimento,estado_civil,sexo,cidade,idade) values
 ('miguel','21994911088','20040225','C','M','São Paulo','20'),
 ('matheus','86994923100','20030410','S','M','Parnaíba','20'),
 ('danilo','86994945101','20040410','S','M','São joão dos pilãos','20'),
 ('Naryara','86994329160','19990301','C','F','Parnaíba','25'),
 ('lutiara','86999139921','20040512','C','F','Piriripiri','20'),
 ('gabriel','86994129921','20041211','S','M','Parnaíba','19'),
 ('william','86994399801','20000714','C','M','Barro duro','25'),
 ('Ana gabriele','59994914222','20031110','C','M','Itapiranga','20'),
 ('Avelino silva','86994429352','19920808','C','M','Teresina','32'),
 ('vitor emanuel','86994429031','19850912','S','M','Tutoia','38');

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

insert into pedidos (id_cliente,produto,quantidade) values
(1,'Televisao Samsung OLED FULL HD',1),
(2,'Samsung Galaxy s4',1),
(3,'LG K10+',1),
(4,'Microondas Samsung',1),
(5,'Aspirador de Pó Mallory',1),
(6,'Mouse Dell',1),
(7,'Monitor Dell 60/50hz',1),
(8, 'Mouse Pad', 2),
(9, 'Caneta Azul Pilot',1),
(10, 'Gabinete Ninja black',1);

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
(10,10);


-- consultas avançadas

select * from clientes where idade > 30;


