/* Exclui o banco de dados "empresa", caso o banco de dados exista */
drop database if exists empresa;

/* Cria o banco de dados "empresa" */
create database empresa;

/* Define o banco de dados "empresa" como banco de dados atual */
use empresa;

/* Cria a tabela pessoas */
create table pessoas(
	id int not null auto_increment,
    nome varchar (30) not null,
	sexo enum ('M', 'F'),
	cidade varchar (20),
    limite_credito decimal(7,2),
    primary key(id)
);

/* Descreve a estrutura da tabela pessoas*/
describe pessoas;

/* Insere registros na tabela pessoas */
insert into pessoas
(nome, sexo, cidade, limite_credito)
values
('Pedro Augusto da Rocha', 'M', 'Novo Hamburgo', '700'),
('Antonio Carlos Mamel', 'M', 'Belo Horizonte', '3500.5'),
('Luiza Augusta Mhor', 'M', 'Niterói', '3900'),
('Jane Ester', 'F', 'Florianópolis', '800'),
('Marcos Antônio dos Santos', 'M', 'Porto Alegre', '4250.25'),
('Giovanna Goncalves Oliveira', 'F', 'Canoas', '1500'),
('Kauã Azevedo Ribeiro', 'M', 'Uberlândia', '799'),
('Rebeca Barbosa Santos', 'F', 'Santo André', '1750'),
('Sarah Carvalho Correia', 'F', 'Juiz de Fora', '499.9'),
('Antonio Almeida Lima', 'M', 'Paranaguá', '2600');

alter table clientes 

modify column nome varchar(40);

insert into clientes
(nome, sexo, cidade, limite_credito)
values
('Felipe iori de souza viana dalalibera', 'M', 'Curitiba', '1720');

/* Mostra todos os registros da tabela pessoas */
select * from clientes;

alter table clientes
add column	uf char(2);
describe clientes;

alter table clientes
drop column sexo;

describe clientes;

alter table clientes
add column idade int first;

describe clientes;
alter table clientes
drop column idade;
alter table clientes
add column idade int after limite_credito;

select * from clientes;
alter table clientes
drop column uf;
describe clientes;
describe clientes;
alter table clientes
change column id login int not null auto_increment;
describe clientes;
alter table clientes
drop idade;
select * from clientes





