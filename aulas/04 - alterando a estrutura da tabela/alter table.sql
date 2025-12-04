-- ALTERANDO A TABELA

-- adicionar coluna profissão
alter table pessoas
add column profissao varchar(10);

-- excluindo coluna profissão
alter table pessoas
drop column profissao;

-- adicionar coluna profissão em um lugar específico
alter table pessoas
add column profissao varchar(10) after nome;

-- alterando/modificar a estrutura da definição
alter table pessoas
modify column profissão varchar(20);

-- modificando o nome de uma coluna
alter table pessoas
change column profissao prof varchar(20);

-- renomear nome da tabela
alter table pessoas
rename to fulanos;

