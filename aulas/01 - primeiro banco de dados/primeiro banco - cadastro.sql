-- criando o banco chamado cadastro
create database cadastro;

-- usar banco
use cadastro;

-- criar tabela pessoas
create table pessoas (
	nome varchar(30),
    idade tinyint(3), -- armazena números inteiros pequenos, usando apenas 1 byte (8 bits)
    sexo char(1), -- armazena sequências de caracteres de um tamanho predefinido
    peso float,
    altura float,
    nacionalidade varchar(20)
);

-- estrutura interna da tabela
describe pessoas;