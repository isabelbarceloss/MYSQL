-- criando tabela cursos

-- unique > garante que todos os valores em uma ou mais colunas de uma tabela sejam únicos
-- unsigned > economiza 1 byte para cada registro que tenha carga registrada

create table cursos (
	nome varchar(50) not null unique,
    descricao text,
    carga int unsigned,
    total_aulas int unsigned,
    ano year default '2025'
) default charset = utf8;

-- descrever a tabela
describe cursos;

-- adicionando coluna idcurso

-- first > adiciona no topo

alter table cursos
add column idcurso int primary key auto_increment first;

-- comando para excluir tabela
-- ex: drop table cursos