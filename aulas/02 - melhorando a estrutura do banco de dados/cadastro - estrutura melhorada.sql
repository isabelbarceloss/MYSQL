-- criar banco
create database cadastro
default character set utf8 -- conjunto de caracteres que suporta a maior parte dos caracteres do alfabeto latino, símbolos e alguns caracteres de outros idiomas
default collate utf8_general_ci; -- compara e ordena os textos por padrão

-- usar banco
use cadastro;

create table pessoas (
	id int not null auto_increment,
	nome varchar(30) not null, -- not null deixa o campo obrigatóriamente digitavel
    nascimento date, -- data
    sexo enum('M', 'F'), -- so sera permitido colocar 'M' ou 'F'
    peso decimal(5,2), -- 5= espaços para numero | 2= dos 5, 2 iram ficar depois da vírgula
    altura decimal(3,2), -- 3= espaços para numero | 2= dos 3, 2 iram ficar depois da vírgula
    nacionalidade varchar(20) default 'Brasil', -- se ninguém digitar nada, por padrão irá ficar 'Brasil'
    primary key (id)
) default charset = utf8;


