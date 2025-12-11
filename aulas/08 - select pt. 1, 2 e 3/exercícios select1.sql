-- EXERCÍCIOS

select * from gafanhotos;

-- 1. selecionar lista com nome de todas as mulheres
select nome from gafanhotos where sexo = 'F'
order by nome;

-- 2. lista com os dados de quem nasceu entre 1/jan/2000 e 31/dez/2015
select * from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31'
order by nascimento;

-- 3. lista com nome de todos os homens que trabalham como programadores
select nome from gafanhotos
where sexo = 'M' and profissao = 'programador'
order by nome;

-- 4. lista de todas as mulheres que nasceram no brasil que tem seu nome começando com a letra J
select * from gafanhotos
where nacionalidade = 'Brasil' and nome like 'J%' and sexo = 'F';

-- 5. lista com nome e nacionalidade de todos os homens que tenham silva no nome, não nesceram no brasil e pesam menos de 100kg
select nome, nacionalidade from gafanhotos
where sexo = 'M' and nome like '%Silva%' and nacionalidade not like 'Brasil' and peso < '100.00';

-- 6. selecionar a maior altura entre gafanhotos homens que moram no brasil
select max(altura) from gafanhotos where nacionalidade = 'Brasil';

-- 7. média do peso dos gafanhotos
select avg(peso) from gafanhotos;

-- 8. menor peso entre as mulheres que nasceram fora do brasil entre 01/jan/1990 e 21/dez/200
select min(peso) from gafanhotos
where sexo = 'F' and nacionalidade not like 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';

-- 9. quantas mulheres tem mais de 1.90 de altura
select * from gafanhotos
where sexo = 'F' and altura > '1.90';