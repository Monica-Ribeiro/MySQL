CREATE DATABASE db_construindo_a_nossa_vida;
USE db_construindo_a_nossa_vida;
CREATE TABLE tb_categoria1(
	id_categoria1 int primary key auto_increment,
    categoria_produto1 varchar (30) unique,
    marca_produto varchar(30) DEFAULT "DESCONHECIDO"
);
CREATE TABLE tb_produto1(
	id_produto1 int primary key auto_increment,
    produtos varchar(30),
    valor_produtos decimal(6,2),
    Roupa enum ("Sim","Não"),
    id_categoria int,
    CONSTRAINT fk_id_categoria1 FOREIGN KEY (id_categoria1)
    REFERENCES tb_categoria1 (id_categoria1)
);
INSERT INTO tb_categoria1 VALUES
(DEFAULT,"Blusa de Frio","Oakley"),
(DEFAULT,"Camiseta","Lacoste"),
(DEFAULT,"Calsa",DEFAULT),
(DEFAULT,"Bermuda","Adidas"),
(DEFAULT,"Tenis","Nike");
INSERT INTO tb_produto1 VALUES
(DEFAULT,"Corta Vento",79.90,"Sim",1),
(DEFAULT,"Polo",55.90,"Sim",2),
(DEFAULT,"Calsa Moletom",45.50,"Sim",3),
(DEFAULT,"Bermuda Jeans",70.45,"Sim",4),
(DEFAULT,"Air Max",275.00,"Nao",5),
(DEFAULT,"Blusa Moletom",70.00,"Sim",1),
(DEFAULT,"Camisa gola V",60.00,"Sim",2),
(DEFAULT,"Calsa Jeans",100.00,"Sim",3);
select * from tb_produto1
where valor_produtos > 50;
select * from tb_produto1
where valor_produtos < 60 and valor_produtos > 3;
select * from tb_produto1
where produtos like "%co%";
select * from tb_produto1
inner join tb_categoria1
on tb_produto1.id_categoria1 = tb_categoria1.id_categoria1;
select id_produto1,produtos,valor_produtos,roupa,categoria_produto1 from tb_produto1
inner join tb_categoria
on tb_produto1.id_categoria1 = tb_categoria1.id_categoria1
where tb_categoria1.id_categoria1 = 1;