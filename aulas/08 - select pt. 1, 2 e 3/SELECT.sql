-- OBTENDO DADOS DAS TABELAS

-- consultando a tabela de acordo com os nomes em ordem alfabética
select * from cursos
order by  nome;

-- consultando a tabela de acordo com os nomes em ordem alfabética só que de forma decrescente
select * from cursos
order by  nome desc;

-- selecionando colunas
select nome, carga, ano from cursos
order by nome;

-- selecionando linhas
select * from cursos
where ano = '2016'
order by nome;

-- selecionando linhas e colunas
select nome, descricao, carga from cursos
where ano = '2016'
order by nome;

-- mostrar todos os registros menos o especificado ordenado por ano com o parâmetro nome
select nome, descricao, ano from cursos
where ano != 2016
order by ano, nome;

-- selecionando intervalos ordenado em ordem alfabética
select * from cursos
where totaulas between '20' and '30'
order by nome;

select nome ,ano from cursos
where ano between 2014 and 2016
order by ano desc, nome;

-- selecionando valores
select idcurso, nome from cursos
where ano in ('2014', '2016', '2018')
order by nome;

-- combinando testes
select nome, carga, totaulas from cursos
where carga > 35 and totaulas < 30
order by nome;

-- selecçao por nome
select * from cursos
where nome = 'PHP';

-- USANDO O OPERADOR LIKE

-- seleção de nomes que >começam< com 'P'
select * from cursos
where nome like 'P%';

-- wildcards
-- seleção de nomes que >terminam< com a 'A'
select * from cursos
where nome like '%A';

-- seleção de nomes que >não< terminam com a 'A'
select * from cursos
where nome not like '%A';

-- seleção onde tenha a letra em qualquer posição, seja no início, final ou meio
select * from cursos
where nome like '%A%';


-- distinguindo
-- mostra registros sem ser de forma repetitiva
select distinct carga from cursos;

-- FUNÇÕES DE AGREGAÇÃO

-- count
select count(nome) from cursos;

select count(*) from cursos where carga > 40;

-- max 
select max(carga) from cursos;

select max(totaulas) from cursos where ano = '2016';

-- min
select min(totaulas) from cursos where ano = '2016';

-- sum (soma)
select sum(totaulas) from cursos where ano = '2016';

-- avg (média)
select avg(totaulas) from cursos where ano = '2016';

-- distinguindo
select distinct carga from cursos
order by carga;

-- agrupando registros
select carga, count(*) from cursos -- count = contagem de linhas em uma tabela
group by carga;

-- agrupando e agregando
select carga, count(*) from cursos
group by carga
having count(*) > 3
order by count(*);


select ano, count(*) from cursos
group by ano
having count(ano) >= 5
order by count(*) desc;


select ano, count(*) from cursos
where totaulas > 30
group by ano
having ano > 2013
order by count(*) desc;


select avg(carga) from cursos;

select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);
