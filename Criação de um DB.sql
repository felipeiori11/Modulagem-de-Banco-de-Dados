drop database if exists empresa; #se banco de dados existir entao apague
#--------------------------------------------------------------------------------

create database empresa; #cria o banco de dados "nome"
use empresa;

create table clientes(
	rg int not null auto_increment, # cria o "id" ou "rg", not null= tem q ser preenchido, auto_increment= vai incrementar na ordem
    nome varchar(40) not null,
    genero enum('M', 'F'),
    nascimento date,
    cidade varchar(30) default 'Curitiba', #se valor nao for definido, sera de padrao curitiba
    uf char(2) default 'PR',
    primary key(rg)
    
);

insert into clientes
(rg, nome, genero, nascimento, cidade, uf)
value
(006, 'Felipe', 'M', '2008-12-25', 'Salvador', 'BA');



select * from clientes;

insert into clientes
(nome, genero, nascimento, cidade, uf)
values
('Beatriz', 'F', '2007-11-20', 'Santa catarina', 'SC');

insert into clientes
(nome, genero, nascimento)
values
('Vitor', 'M', '2000-10-22');
   
select * from clientes;

insert into clientes
(nome, genero, nascimento, cidade, uf)
values
('Jaime', 'M', '1976-12-08', default, default),
('Val', 'M', '1988-03-12', 'Santo andre', 'sp');

select * from clientes

    
