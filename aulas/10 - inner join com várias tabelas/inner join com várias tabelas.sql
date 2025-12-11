-- criando tabela do relacionamento
create table gafanhoto_assiste_curso (
	id int not null auto_increment,
    data date,
    idgafanhoto int,
    idcurso int,
    primary key (id),
    foreign key (idgafanhoto) references gafanhotos (id),
    foreign key (idcurso) references cursos (idcurso)
) default charset = utf8;

-- inserindo registro
insert into gafanhoto_assiste_curso values
	(default, '2025-10-29', '1', '2');

-- todos os registros
select * from gafanhoto_assiste_curso;

-- junções
select g.nome, a.idcurso from gafanhotos  g join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto;

-- para aparecer o nome do curso invés do id
select g.nome, c.nome from gafanhotos  g join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto
join cursos c
on a.idcurso = c.idcurso;