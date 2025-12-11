use cadastro;

-- descrever a tabela gafanhotos
desc gafanhotos;

-- alterar a tabela para adicionar a chave estrangeira
alter table gafanhotos
add column cursopreferido int;

alter table gafanhotos
add foreign key (cursopreferido)
references cursos(idcurso);

select * from gafanhotos;

-- juntando tabelas com inner join
select gafanhotos.nome, cursos.nome, cursos.ano
from gafanhotos inner join cursos
on cursos.idcurso = gafanhotos.cursopreferido;

-- dando "apelido" usando o AS
select g.nome, c.nome, c.ano
from gafanhotos as g inner join cursos as c
on c.idcurso = g.cursopreferido;

-- left join - mostra os registros da tabela da esquerda (gafanhotos)
select g.nome, c.nome, c.ano
from gafanhotos as g left join cursos as c
on c.idcurso = g.cursopreferido;

-- right join - mostra os registros da tabela da direita (cursos)
select g.nome, c.nome, c.ano
from gafanhotos as g right join cursos as c
on c.idcurso = g.cursopreferido;

