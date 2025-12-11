-- inserindo registros na tabela cursos
insert into cursos values
	(default, 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
	(default, 'Algoritmos', 'Lógica de Programação', '20', '15', '2014'),
    (default, 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
	(default, 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
	(default,'Jarva', 'Introdução à Linguagem Java', '10','29','2000'),
    (default, 'MySQL', 'Bancos de Dados MySQL', '30', '15', '2016'),
	(default, 'Word', 'Curso completo de Word', '40', '30', '2016'),
	(default, 'Sapateado', 'Danças Rítmicas', '40', '30', '2018'),
	(default, 'Cozinha Árabe', 'Aprenda a fazer Kibe', '40', '30', '2018'),
    (default, 'YouTuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');
    
    -- mostrar todos os registros
    select * from cursos;
    
    -- mudar o nome de 'HTML4' para 'HTML5'
    update cursos
    set nome = 'HTML5'
    where idcurso = '1';
    
    -- mudando o nome de 'PGP' para 'PHP' + ano de '2010' para '2015'
    update cursos
    set nome = 'PHP', ano = '2015'
    where idcurso = '4';
    
    -- mudando o nome, a carga horaria e o ano
    update cursos
    set nome = 'Java', carga = '40', ano = '2015'
    where idcurso = '5';
    
    -- deletando linhas
    delete from cursos
    where idcurso = '8';
    
    delete from cursos
    where ano = '2018';
    
    -- deletar TODAS as linhas de uma tabela
    -- truncate = apagar todos os registros
    truncate table cursos;