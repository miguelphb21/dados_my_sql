-- select * from clientes where data_nascimento = 19880103;
-- select * from clientes where estado_civil = 'S';
-- select * from clientes where estado_civil = 'S' and sexo = 'M';
-- select * from clientes where estado_civil = 'S' or estado_civil = 'C';
-- select * from clientes where estado_civil = 'S' and estado_civil = 'S' or cidade = 'Salvador'
-- 
-- Funções de Agregação COUNT / COUNT (*) / COUNT (DISTINCT) - SUM - AVG - MIN-MAX

-- select count(estado) from locais
-- select count(nome) from clientes; 
-- select count(*) as total_estados from locais;
select count(distinct cidade) as cidade from clientes;
