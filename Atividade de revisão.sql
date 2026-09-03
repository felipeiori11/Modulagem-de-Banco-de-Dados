/* ============================================================
   BANCO DE DADOS: LOJA
   Atividade de SQL - MySQL
   ============================================================ *

/* ============================================================
   PREPARAÇÃO DO BANCO DE DADOS
   ============================================================ */

/* Exclui o banco de dados "loja", caso ele exista. */
drop database if exists loja;

/* Cria o banco de dados "loja". */
create database loja;

/* Define o banco de dados "loja" como o banco de dados atual. */
use loja;

/* ============================================================
   CRIAÇÃO DA TABELA
   ============================================================ */

/* Cria a tabela produtos. */
create table produtos(
    id_produto int not null,
    nome varchar(40) not null,
    categoria enum(
        'Bebidas',
        'Carnes/Aves',
        'Condimentos',
        'Confeitos',
        'Frutos do Mar',
        'Grãos/Cereais',
        'Hortigranjeiros',
        'Laticínios'
    ) not null,
    preco_unitario decimal(7,2) not null,
    unidades_estoque int not null,
    descontinuado enum('Sim', 'Não') not null,
    primary key(id_produto)
);

/* Descreve a estrutura da tabela produtos. */
describe produtos;

/* ============================================================
   INSERÇÃO DOS REGISTROS
   ============================================================ */

/* Insere registros na tabela produtos. */
insert into produtos
(id_produto, nome, categoria, preco_unitario, unidades_estoque, descontinuado)
values
(1, 'Chai', 'Bebidas', 18, 39, 'Não'),
(2, 'Chang', 'Bebidas', 19, 17, 'Não'),
(3, 'Aniseed Syrup', 'Condimentos', 10, 13, 'Não'),
(4, 'Chef Anton Cajun Seasoning', 'Condimentos', 22, 53, 'Não'),
(5, 'Chef Anton Gumbo Mix', 'Condimentos', 21.35, 0, 'Sim'), 
(6, 'Grandmas Boysenberry Spread', 'Condimentos', 25, 120, 'Não'),
(7, 'Uncle Bobs Organic Dried Pears', 'Hortigranjeiros', 30, 15, 'Não'),
(8, 'Northwoods Cranberry Sauce', 'Condimentos', 40, 6, 'Não'),
(9, 'Mishi Kobe Niku', 'Carnes/Aves', 97, 29, 'Sim'), 
(10, 'Ikura', 'Frutos do Mar', 31, 31, 'Não'), 
(11, 'Queso Cabrales', 'Laticínios', 21, 22, 'Não'),
(12, 'Queso Manchego La Pastora', 'Laticínios', 38, 86, 'Não'),
(13, 'Konbu', 'Frutos do Mar', 6, 24, 'Não'),
(14, 'Tofu', 'Hortigranjeiros', 23.25, 35, 'Não'), 
(15, 'Genen Shouyu', 'Condimentos', 15.5, 39, 'Não'),
(16, 'Pavlova', 'Confeitos', 17.45, 29, 'Não'),
(17, 'Alice Mutton', 'Carnes/Aves', 39, 0, 'Sim'),
(18, 'Carnarvon Tigers', 'Frutos do Mar', 62.5, 42, 'Não'),
(19, 'Teatime Chocolate Biscuits', 'Confeitos', 9.2, 25, 'Não'),
(20, 'Sir Rodneys Marmalade', 'Confeitos', 81, 40, 'Não'),
(21, 'Sir Rodneys Scones', 'Confeitos', 10, 3, 'Não'),
(22, 'Gustafs Knäckebröd', 'Grãos/Cereais', 21, 104, 'Não'),
(23, 'Tunnbröd', 'Grãos/Cereais', 9, 61, 'Não'),
(24, 'Guaraná Fantástica', 'Bebidas', 4.5, 20, 'Sim'),
(25, 'NuNuCa Nuß-Nougat-Creme', 'Confeitos', 14, 76, 'Não'),
(26, 'Gumbär Gummibärchen', 'Confeitos', 31.23, 15, 'Não'),
(27, 'Schoggi Schokolade', 'Confeitos', 43.9, 49, 'Não'),
(28, 'Rössle Sauerkraut', 'Hortigranjeiros', 45.6, 26, 'Sim'),
(29, 'Thüringer Rostbratwurst', 'Carnes/Aves', 123.79, 0, 'Sim'),
(30, 'Nord-Ost Matjeshering', 'Frutos do Mar', 25.89, 10, 'Não'),
(31, 'Gorgonzola Telino', 'Laticínios', 12.5, 0, 'Não'),
(32, 'Mascarpone Fabioli', 'Laticínios', 32, 9, 'Não'),
(33, 'Geitost', 'Laticínios', 2.5, 112, 'Não'),
(34, 'Sasquatch Ale', 'Bebidas', 14, 111, 'Não'),
(35, 'Steeleye Stout', 'Bebidas', 18, 20, 'Não'),
(36, 'Inlagd Sill', 'Frutos do Mar', 19, 112, 'Não'),
(37, 'Gravad lax', 'Frutos do Mar', 26, 11, 'Não'),
(38, 'Côte de Blaye', 'Bebidas', 263.5, 17, 'Não'),
(39, 'Chartreuse verte', 'Bebidas', 18, 69, 'Não'),
(40, 'Boston Crab Meat', 'Frutos do Mar', 18.4, 123, 'Não'),
(41, 'Jacks New England Clam Chowder', 'Frutos do Mar', 9.65, 85, 'Não'),
(42, 'Singaporean Hokkien Fried Mee', 'Grãos/Cereais', 14, 26, 'Sim'),
(43, 'Ipoh Coffee', 'Bebidas', 46, 17, 'Não'),
(44, 'Gula Malacca', 'Condimentos', 19.45, 27, 'Não'),
(45, 'Røgede sild', 'Frutos do Mar', 9.5, 5, 'Não'),
(46, 'Spegesild', 'Frutos do Mar', 12, 95, 'Não'),
(47, 'Zaanse Koeken', 'Confeitos', 9.5, 36, 'Não'),
(48, 'Chocolade', 'Confeitos', 12.75, 15, 'Não'),
(49, 'Maxilaku', 'Confeitos', 20, 10, 'Não'),
(50, 'Valkoinen Suklaa', 'Confeitos', 16.25, 65, 'Não'),
(51, 'Manjimup Dried Apples', 'Hortigranjeiros', 53, 20, 'Não'),
(52, 'Filo Mix', 'Grãos/Cereais', 7, 38, 'Não'),
(53, 'Perth Pasties', 'Carnes/Aves', 32.8, 0, 'Sim'),
(54, 'Tourtière', 'Carnes/Aves', 7.45, 21, 'Não'),
(55, 'Pâté Chinois', 'Carnes/Aves', 24, 115, 'Não'),
(56, 'Gnocchi di Nonna Alice', 'Grãos/Cereais', 38, 21, 'Não'),
(57, 'Ravioli Angelo', 'Grãos/Cereais', 19.5, 36, 'Não'),
(58, 'Escargots de Bourgogne', 'Frutos do Mar', 13.25, 62, 'Não'),
(59, 'Raclette Courdavault', 'Laticínios', 55, 79, 'Não'),
(60, 'Camembert Pierrot', 'Laticínios', 34, 19, 'Não'),
(61, 'Sirop dérable', 'Condimentos', 28.5, 113, 'Não'),
(62, 'Tarte au sucre', 'Confeitos', 49.3, 17, 'Não'),
(63, 'Vegie-spread', 'Condimentos', 43.9, 24, 'Não'),
(64, 'Wimmers Gute Semmelknödel', 'Grãos/Cereais', 33.25, 22, 'Não'),
(65, 'Louisiana Fiery Hot Pepper Sauce', 'Condimentos', 21.05, 76, 'Não'),
(66, 'Louisiana Hot Spiced Okra', 'Condimentos', 17, 4, 'Não'),
(67, 'Laughing Lumberjack Lager', 'Bebidas', 14, 52, 'Não'),
(68, 'Scottish Longbreads', 'Confeitos', 12.5, 6, 'Não'),
(69, 'Gudbrandsdalsost', 'Laticínios', 36, 26, 'Não'),
(70, 'Outback Lager', 'Bebidas', 15, 15, 'Não'),
(71, 'Flotemysost', 'Laticínios', 21.5, 26, 'Não'),
(72, 'Mozzarella di Giovanni', 'Laticínios', 34.8, 14, 'Não'),
(73, 'Röd Kaviar', 'Frutos do Mar', 15, 101, 'Não'),
(74, 'Longlife Tofu', 'Hortigranjeiros', 10, 4, 'Não'),
(75, 'Rhonbrau Klosterbier', 'Bebidas', 7.75, 125, 'Não'),
(76, 'Lakkalikoori', 'Bebidas', 18, 57, 'Não'),
(77, 'Original Frankfurter grüne Soe', 'Condimentos', 13, 32, 'Não');

/* Mostra todos os registros da tabela de produtos. */
select * from produtos;

/* ============================================================
   ATIVIDADES - FILTRAGEM DE COLUNAS
   ============================================================ */

/* 1. Nome dos produtos, em ordem crescente. */
select * from produtos
order by nome;

/* 2. Nome, categoria e preço dos produtos, ordenado por nome. */
select nome, categoria, preco_unitario from produtos
order by nome;

/* 3. Categoria e nome dos produtos, ordenado por categoria e por nome. */
select categoria, nome from produtos
order by categoria, nome;

/* 4. Nome e preço dos produtos, ordenado por ordem decrescente de preço. */
select nome, preco_unitario from produtos
order by preco_unitario desc;

/* 5. Nome dos produtos e unidades em estoque, ordenado por unidades em estoque. */
select nome, unidades_estoque from produtos
order by unidades_estoque;

/* ============================================================
   ATIVIDADES - FILTRAGEM DE LINHAS
   ============================================================ */

/* 6. Produtos da categoria Laticínios. */
select * from produtos
where categoria = "Laticínios";

/* 7. Todos os produtos, exceto da categoria Bebidas. */
select * from produtos
where categoria != "Bebidas";


/* 8. Produtos descontinuados. */
select * from produtos
where descontinuado = "Sim";

/* 9. Produtos com unidades em estoque igual a 0. */
select * from produtos 
where unidades_estoque = 0;

/* 10. Produtos com preço unitário acima de 70,0. */
select * from produtos
where preco_unitario > 70;

/* 11. Produtos com preço unitário entre 10,0 e 15,0. */
select * from produtos
where preco_unitario >= 10 and preco_unitario <= 15
order by preco_unitario;

/* 12. Produtos das categorias Bebidas, Condimentos ou Confeitos. */
select * from produtos
where categoria = "Bebidas" or (categoria = "Condimentos" or categoria = "Confeitos")
order by categoria;

/* 13. Produtos da categoria Bebidas com mais de 100 unidades em estoque. */
select * from produtos
where categoria =  "Bebidas" and unidades_estoque > 100;

/* 14. Produtos da categoria Bebidas ou Laticínios
       com mais de 100 unidades em estoque. */
select * from produtos
where categoria = "Bebidas" and (unidades_estoque > 100) or (categoria = "Laticínios") and (unidades_estoque > 100);

/* 15. Produtos descontinuados com unidades em estoque diferente de 0. */
select * from produtos
where descontinuado = "Sim" and (unidades_estoque != 0);

/* 16. Produtos iniciando com a letra M. */
select nome from produtos
where nome like "M%_";

/* 17. Categorias distintas dos produtos. */
select distinct categoria from produtos;


/* ============================================================
   ATIVIDADES - FUNÇÕES DE AGREGAÇÃO
   ============================================================ */

/* 18. Quantidade de produtos da tabela. */
select count(*) as total_produtos from produtos;

/* 19. Quantidade de produtos da categoria Confeitos. */
select count(*) from produtos
where categoria = 'confeitos';

/* 20. Quantidade de produtos da categoria Confeitos
       com preço maior que 15,0. */
select count(*) from produtos
where categoria = "confeitos" and (preco_unitario > 15);


/* 21. Quantidade de produtos da categoria Confeitos
       com preço maior que 15,0 e unidades em estoque maior que 50. */
select count(*) from produtos
where categoria = "confeitos" and (preco_unitario > 15) and (unidades_estoque > 50);


/* 22. Maior preço da categoria Bebidas. */
select max(preco_unitario) from produtos
where categoria = "Bebidas";



/* 23. Menor preço da categoria Confeitos. */
select min(preco_unitario) from produtos
where categoria = "confeitos";

/* 24. Preço médio dos produtos da categoria Bebidas. */
select avg(preco_unitario) from produtos
where categoria = "bebidas";

/* 25. Total de unidades em estoque da categoria Confeitos. */
select sum(unidades_estoque) from produtos
where categoria = "confeitos";



/* 26. Número de produtos descontinuados. */
select count(*) from produtos
where descontinuado = "Sim";


/* 27. Preço dos produtos da categoria Bebidas com 10% de aumento. */
select  nome, preco_unitario, preco_unitario * 1.1  as preco_com_aumento from produtos
where categoria = "Bebidas";

/* 28. Preço dos produtos da categoria Laticínios com 5% de desconto. */
select nome, preco_unitario, preco_unitario * 0.95 as preco_com_desconto from produtos
where categoria = "Laticínios";

/* 29. Preço dos produtos com preço unitário acima de 40,0
       com 7% de desconto. */
select nome, preco_unitario, preco_unitario * 0.93 as preco_com_sete from produtos
where preco_unitario > 40;

/* ============================================================
   ATIVIDADES - FUNÇÕES DE AGRUPAMENTO
   ============================================================ */

/* 30. Quantidade de produtos por categoria. */
select categoria, count(*) from produtos
group by categoria;



/* 31. Quantidade de produtos descontinuados por categoria. */
select categoria,  count(*) as quantidade_descontinuados from produtos
where descontinuado = "Sim"
group by categoria;


/* 32. Categorias com mais de um produto descontinuado. */
select categoria, count(*) as mais_de_um from produtos
where descontinuado = "Sim"
group by categoria
having count(*) > 1;


/* 33. Categorias com mais de 500 unidades de produtos em estoque. */
select categoria, sum(unidades_estoque) as mais_500_unidades from produtos
group by categoria
having sum(unidades_estoque) > 500;


/* 34. Categorias com até 5 produtos. */
select categoria, count(*) from produtos
group by categoria
having count(*) <= 5;

/* 35. Categorias com mais de 10 produtos. */
select categoria, count(*) from produtos
group by categoria
having count(*) > 10;

/* ============================================================
   ATIVIDADES - ATUALIZAÇÃO DE REGISTROS
   ============================================================ */

/*
36. Por decisão administrativa, altere a categoria do produto
    de id_produto = 14 para "Frutos do Mar".
*/
update produtos
set categoria = "Frutos do mar"
where id_produto = 14;
select * from produtos;


/*
	37. Altere simultaneamente o preço unitário para 11.25
		e o status de descontinuação para "Sim" do produto
		de id_produto = 3.
*/
update produtos
set preco_unitario = 11.25, descontinuado = "Sim"
where id_produto = 3;

/*
=============================================================
ATENÇÃO - SAFE UPDATES
=============================================================

Em alguns ambientes, especialmente no MySQL Workbench,
o modo "Safe Updates" pode impedir UPDATEs e DELETEs
quando o comando não utiliza uma coluna-chave na condição WHERE.

Caso isso aconteça, é possível desativar temporariamente
o Safe Updates utilizando:

    set sql_safe_updates = 0;

Após executar a operação, o modo pode ser ativado novamente:

    set sql_safe_updates = 1;

IMPORTANTE:
Antes de executar um UPDATE ou DELETE, recomenda-se
executar primeiro um SELECT utilizando a mesma condição
WHERE para verificar quais registros serão afetados.
=============================================================
*/

/*
38. Atualize as unidades em estoque dos produtos da categoria
    "Bebidas" para 100.
*/
update produtos
set unidades_estoque = 100
where categoria = "Bebidas";


/*
39. Atualize com um acréscimo de 10% o preço unitário
    dos produtos da categoria "Confeitos".
*/
update produtos
set preco_unitario = preco_unitario * 1.1
where categoria = "Confeitos";




/*
40. Atualize com um desconto de 5% o preço unitário
    dos produtos descontinuados.
*/
update produtos
set preco_unitario = preco_unitario * 0.05
where descontinuado = "Sim";


/* ============================================================
   ATIVIDADES - EXCLUSÃO DE REGISTROS
   ============================================================ */

/*
ATENÇÃO!

A partir da questão 41, os comandos irão excluir registros
da tabela produtos.

Execute as questões na ordem indicada.

Antes de executar um DELETE, faça um SELECT utilizando
a mesma condição WHERE para verificar quais registros
serão excluídos.

Exemplo:

    select *
    from produtos
    where descontinuado = 'Sim';

Somente depois de conferir o resultado, execute o DELETE.

As questões 46 e 47 encerram a atividade, pois eliminam
a tabela e o banco de dados.
*/

/*
41. Exclua os produtos descontinuados.
*/

delete from produtos
where descontinuado = "Sim";

/*
42. Exclua os produtos com unidades em estoque maior que 100.
*/
delete from produtos
where unidades_estoque > 100;


/*
43. Exclua os produtos com unidades em estoque entre 40 e 50.
*/
delete from produtos
where unidades_estoque >= 40 and unidades_estoque <=50;


/*
44. Exclua os produtos das categorias "Hortigranjeiros"
    e "Laticínios".
*/
delete from produtos
where categoria = "Hortigranjeiros" and categoria = "Laticínios";


/*
45. Exclua os produtos que contenham "choco"
    em qualquer parte do nome.
*/
delete from produtos
where nome like "%choco%";


/*
=============================================================
ATENÇÃO!

As questões 46 e 47 são destrutivas.

Execute somente depois de concluir e conferir
todas as questões anteriores.
=============================================================
*/

/*
46. Exclua a tabela de produtos.
*/
delete from produtos;

/*
47. Exclua o banco de dados loja.
*/
drop database loja;
