-- DESATIVANDO O SQL SAFE UPDATES 

SET SQL_SAFE_UPDATES = 0;

-- select em todas as tabelas 

select * from produtos;
select * from pedidos;
select * from clientes;
select * from estoque;

-- CRIAÇÃO DAS TABELAS
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
    quantidade int,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);

-- 3°
create table produtos(
	id int primary key auto_increment,
    nome varchar(50),
    preco decimal(10,2)
);

-- 4°
create table estoque(
	produto_id int not null,
	quantidade_disponivel int not null,
    foreign key (produto_id) references produtos (id)
);


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
(1,'Televisao CCL OLED FULL HD','1200.00'),
(2,'Samsung Galaxy s4','899.99'),
(3,'LG K10+','789.90'),
(4,'Microondas Panasonic','899.90'),
(5,'Aspirador de Pó Mallory','599.90'),
(6,'Mouse Dell','89.90'),
(7,'Monitor Asus 60/50hz','790.90'),
(8,'Gabinete Ninja black','199.90'),
(9,'Caderno Cadersil 20m','38.90'),
(10,'Caneta Azul Pilot','9.99');



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

-- operações CRUD e consultas SQL - 4 Operações crud

-- criação de colunas nas tabelas
ALTER TABLE clientes ADD COLUMN endereco VARCHAR(100);
ALTER TABLE pedidos ADD COLUMN nome_cliente VARCHAR(100) AFTER id_cliente;
ALTER TABLE produtos ADD COLUMN id_fornecedor int AFTER preco;
ALTER TABLE produtos ADD COLUMN fornecedor varchar(40) after id_fornecedor;
ALTER TABLE produtos ADD COLUMN telefone_fornecedor VARCHAR(15);

-- INSERÇÃO DE DADOS

-- TABELA CLIENTES /  ENDERECO
UPDATE clientes SET endereco = 'Rua santa Luzia,400,bairro do carmo' WHERE (id = '1');
UPDATE clientes SET endereco = 'Rua massa fera, 320, bairro elaine' WHERE (id = '2');
UPDATE clientes SET endereco = 'Rua santana do parnaíba,302,bairro sao jorge' WHERE (id = '3');
UPDATE clientes SET endereco = 'rua sei lá,3002,bairro danilo soares' WHERE (id = '4');
UPDATE clientes SET endereco = 'rua gabriel rocha,20,bairro sao francisco' WHERE (id = '5');
UPDATE clientes SET endereco = 'rua matheus monteiro,22,bairro geregotango' WHERE (id = '6');
UPDATE clientes SET endereco = 'rua alanzoka,40,bairro silva sauro' WHERE (id = '7');
UPDATE clientes SET endereco = 'Rua alberto Silva,20,B. do carmo' WHERE (id = '8');
UPDATE clientes SET endereco = 'Rua Monteiro Lobato,302,bairro Santos alves' WHERE (id = '9');
UPDATE clientes SET endereco = 'Rua Ceará,506,Bairro Piauí' WHERE (id = '10');

-- TABELA PEDIDOS  /   ID_CLIENTE
UPDATE pedidos SET nome_cliente = 'miguel' WHERE (id = '1');
UPDATE pedidos SET nome_cliente = 'matheus' WHERE (id = '2');
UPDATE pedidos SET nome_cliente = 'Ana gabriele' WHERE (id = '3');
UPDATE pedidos SET nome_cliente = 'vitor emanuel' WHERE (id = '4');
UPDATE pedidos SET nome_cliente = 'Avelino silva' WHERE (id = '5');
UPDATE pedidos SET nome_cliente = 'william' WHERE (id = '7');
UPDATE pedidos SET nome_cliente = 'lutiara' WHERE (id = '6');
UPDATE pedidos SET nome_cliente = 'gabriel' WHERE (id = '8');
UPDATE pedidos SET nome_cliente = 'danilo' WHERE (id = '9');
UPDATE pedidos SET nome_cliente = 'Naryara' WHERE (id = '10');

-- TABELA PRODUTOS /   ID_FORNCEDOR/FORNECEDOR/TELEFONE DO FORNECEDOR

UPDATE produtos SET id = '1', fornecedor = 'CCL', telefone_fornecedor = '551899009901' WHERE (id = '1');
UPDATE produtos SET id = '2', fornecedor = 'SAMSUNG', telefone_fornecedor = '551899009902' WHERE (id = '2');
UPDATE produtos SET id = '3', fornecedor = 'LG', telefone_fornecedor = '551899009903' WHERE (id = '3');
UPDATE produtos SET id = '4', fornecedor = 'Arno', telefone_fornecedor = '551899009904' WHERE (id = '4');
UPDATE produtos SET id = '5', fornecedor = 'MALLORY', telefone_fornecedor = '551899009905' WHERE (id = '5');
UPDATE produtos SET id = '6', fornecedor = 'DELL', telefone_fornecedor = '551899009906' WHERE (id = '6');
UPDATE produtos SET id = '7', fornecedor = 'Asus', telefone_fornecedor = '551899009907' WHERE (id = '7');
UPDATE produtos SET id = '8', fornecedor = 'NINJA', telefone_fornecedor = '551899009908' WHERE (id = '8');
UPDATE produtos SET id = '9', fornecedor = 'CADERSIL', telefone_fornecedor = '551899009909' WHERE (id = '9');
UPDATE produtos SET id = '10', fornecedor = 'PILOT', telefone_fornecedor = '551899009910' WHERE (id = '10');

-- SELEÇÃO
select * from produtos;
select * from estoque;


-- ATUALIZAÇÃO
update clientes set nome = 'Miguel de sousa da silva' where id = '1';

-- EXCLUSÃO
delete from estoque where produto_id = '10';
drop table estoque;

-- operações CRUD e consultas SQL - 5 consultas SQL avançadas
Update clientes set endereco = 'Rua Armando Bulamarque,300,Bairro Nossa senhora De fátima' where id = '3';
SELECT * FROM clientes WHERE idade > 30; 
Delete from pedidos where cliente_id = '3' ;
update produtos set preco =  preco + (preco * 0.1);

-- operações CRUD e consultas SQL - 6.consultas expecíficas
SELECT * FROM clientes where nome like 'A%';
select data_da_venda from pedidos where data_da_venda between date(20240610) and date(20240630);
select * from produtos where preco order by preco desc;
select * from estoque where quantidade_disponivel < 10;

 -- Parte 5 - 9.AGREGAÇÕES E FUNÇÕES
 
 select count(*) as 'QUANTIDADE DE CLIENTES' from clientes;
 select sum(quantidade) as 'SOMA DOS PEDIDOS' from pedidos;
 select avg(idade) as 'média da idades' from clientes;
 SELECT MIN(idade) as 'Idade Mínima', MAX(idade) as 'Idade Máxima'  FROM clientes;
 select count(distinct cidade)as 'Quantidade de cidades' from clientes;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
 
-- NORMALIZAÇÃO DAS TABELAS
 
-- 1FN CLIENTE

/* 1 - A Tabela endereco do cliente há uma anomalia, é um ATRIBUTO COMPOSTO pois há varias informaçôes dentro da coluna
para corrigir isso criarei novas tabelas e desmembrarei as informações de endereço para preenche-las;*/
ALTER TABLE clientes ADD COLUMN rua varchar(50);
ALTER TABLE clientes ADD COLUMN numero int; 
ALTER TABLE clientes ADD COLUMN bairro varchar(50);

/* 2 - Agora fazer uma atualização em cada um dos bairros*/
UPDATE clientes SET rua = 'Rua alanzoka', numero = '40', bairro = 'Bairro silva Sauro' WHERE (id = '7');
UPDATE clientes SET rua = 'Rua Arlindomar' WHERE (id = '2');
/* 3 - Agora iremos apagar a coluna endereco*/
alter table clientes drop column endereco;

-- 2FN PEDIDOS

-- foi adicionado uma coluna "nome-cliente" mas ela trás uma dependencia parcial, que so necessita de 1 chave primaria para ser identificado.
-- agora vamos corrigir criando uma nova tabela clientes para os pedidos

create table clientes_pedidos(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome varchar(50)
);
create table pedidos_2FN(
	id int primary key auto_increment,
    id_cliente int,
    produto varchar(50),
    quantidade int,
    valor decimal(10,2),
    foreign key(id_cliente) references clientes_pedidos(id)
);

-- INSERÇÃO DE DADOS NAS TABELAS

INSERT INTO clientes_pedidos(id, nome) 
SELECT id_cliente, nome_cliente FROM pedidos GROUP BY id_cliente, nome_cliente;

INSERT INTO pedidos_2FN (id_cliente, produto, quantidade,valor)
SELECT id_cliente, produto, quantidade,valor FROM pedidos;

-- DELETAR AS TABELAS NÃO NORMALIZADAS
drop table pedidos;
 
 
-- 3FN PRODUTOS
-- A tabela produtos tem uma anormalidade que se chama "dependência transitiva" onde uma coluna não depende da chave primaria mas sim de uma coluna comum.
-- Para consertarmos isso iremos criar outra tabela chamada "fornecedor" para melhorar o gerenciamento de dados e retirar a anomalia.

create table fornecedor(
	id int primary key auto_increment,
    fornecedor varchar(40),
    telefone_fornecedor varchar(15)
);

create table produtos_3FN(
	id int primary key auto_increment,
    id_fornecedor int,
    nome varchar(50),
    preco decimal(10,2),
    foreign key(id_fornecedor) references fornecedor(id)
);

create table estoque_3FN(
	produto_id int not null,
	quantidade_disponivel int not null,
    foreign key (produto_id) references produtos_3FN(id)
);

-- INSERÇÃO DE DADOS NAS TABELAS

INSERT INTO fornecedor(id, fornecedor, telefone_fornecedor) 
SELECT id_fornecedor, fornecedor, telefone_fornecedor FROM produtos;

INSERT INTO produtos_3FN(id_fornecedor, nome, preco)
SELECT id_fornecedor, nome, preco FROM produtos;

INSERT INTO estoque_3FN(produto_id, quantidade_disponivel)
SELECT produto_id, quantidade_disponivel FROM estoque;

-- DELETAR A TABELA NÃO NORMALIZADA

DROP TABLE produtos;
DROP TABLE estoque;
