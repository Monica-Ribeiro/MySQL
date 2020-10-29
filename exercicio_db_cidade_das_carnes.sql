CREATE DATABASE db_cidade_das_carne;
USE db_cidade_das_carne;
CREATE TABLE tb_categoria(
	id_categoria int primary key auto_increment,
    categoria_produto varchar (30) unique,
    marca_produto varchar(30) DEFAULT "DESCONHECIDO"
);
drop table tb_produto;
CREATE TABLE tb_produto(
	id_produto int primary key auto_increment,
    produtos varchar(30),
    valor_produtos decimal(6,2),
    Carne enum ("Sim","Não"),
    id_categoria int,
    CONSTRAINT fk_id_categoria FOREIGN KEY (id_categoria)
    REFERENCES tb_categoria (id_categoria)
);
INSERT INTO tb_categoria VALUES
(DEFAULT,"Carne Bovina","Friboi"),
(DEFAULT,"Carne Suina","Swiftch"),
(DEFAULT,"Frango","Frigomedeiros"),
(DEFAULT,"Facas","Tramontina"),
(DEFAULT,"Misto Carnes",DEFAULT);
INSERT INTO tb_produto VALUES
(DEFAULT,"Costela Bovina",19.90,"Sim",1),
(DEFAULT,"Linguiça Suina",16.90,"Sim",2),
(DEFAULT,"Peito de Frango",10.50,"Sim",3),
(DEFAULT,"Faca de carne",30.45,"Nao",4),
(DEFAULT,"Linguiça + Bife",25.00,"Sim",5),
(DEFAULT,"Bife",17.50,"Sim",1),
(DEFAULT,"Costelinha de Porco",19.10,"Sim",2),
(DEFAULT,"Frango a Passarinho",17.50,"Sim",3);
select * from tb_produto
where valor_produtos > 50;
select * from tb_produto
where valor_produtos < 60 and valor_produtos > 3;
select * from tb_produto
where produtos like "%co%";
select * from tb_produto
inner join tb_categoria
on tb_produto.id_categoria = tb_categoria.id_categoria;
select id_produto,produtos,valor_produtos,carne,categoria_produto from tb_produto
inner join tb_categoria
on tb_produto.id_categoria = tb_categoria.id_categoria
where tb_categoria.id_categoria = 1;