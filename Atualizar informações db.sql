create database locadora;


use locadora;

create table filmes(
	id int auto_increment,
    nome varchar(40),
    primary key(id)
);

insert into filmes
( nome )
values
('A Hora do Pesadelo'),
('Ben-Hur'),
('Como Eu Era antes de Você'),
('Estrada sem Lei'),
('Forrest Gump – O Contador de Histórias');

alter table filmes rename to acervo;

alter table acervo rename column nome to titulos;

alter table acervo
add column genero varchar(40);
alter table acervo
add column ano year;

update acervo
set genero = 'Terror'
where id = 1;

select * from acervo;

update acervo
set genero = 'Aventura'
where id = 2;

update acervo
set genero = 'Romance'
where id = 3;

update acervo
set genero = 'Comédia'
where id = 4;

update acervo
set genero = 'Comédia'
where id = 5;



update acervo
set ano = 1986
where id = 1;

update acervo
set ano = 1960
where id = 2;

update acervo
set ano = 2016
where id = 3;

update acervo
set ano = 2014
where id = 4;

update acervo
set ano = 1994
where id = 5;

select * from acervo;

update acervo
set genero = 'Policial'
where id = 4;

update acervo
set ano = 2019
where id = 4;


delete from acervo
where id = 5;

select * from acervo;

truncate acervo;

drop table acervo;

drop database locadora;









