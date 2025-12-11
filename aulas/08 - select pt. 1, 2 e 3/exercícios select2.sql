-- exercícios

select * from gafanhotos;

-- 1. uma lista com as profissões dos gafanhotos e seus respectivos quantitativos
select profissao, count(*) from gafanhotos
group by profissao
order by count(*);

-- 2. quantos homens e quantas mulheres nasceram após 01/jan/2005
select sexo, count(*) from gafanhotos
where nascimento > '2005-01-01'
group by sexo
order by count(*);

-- 3. lista com as pessoas que nasceram fora do brasil, mostrando o país de origem e o total de pessoas nascidas lá. somente os países que tiverem mais de 3 pessoas com essa nacionalidade
select nacionalidade, count(*) from gafanhotos
where nacionalidade not like 'Brasil'
group by nacionalidade
having count(*) > 3;

-- 4. lista agrupada pela altura das pessoas, mostrando quantos pesam mais de 100kg e que estam acima da média de altura de todos os cadastrados

select avg(altura) from gafanhotos; -- 1.66

select altura, peso, count(*) from gafanhotos
where peso > 100.00 and altura > (select avg(altura) from gafanhotos)
group by altura
order by altura desc;