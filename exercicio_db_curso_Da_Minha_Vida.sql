CREATE DATABASE db_curso_Da_Minha_Vida;
USE db_curso_Da_Minha_Vida;
CREATE TABLE tb_categoria(
	id_categoria int primary key auto_increment,
    categoria_curso varchar (30),
    duracao_curso enum("360","720","360+")
);
CREATE TABLE tb_curso(
	id_curso int primary key auto_increment,
    cursos varchar(30),
    valor_cursos decimal(8,2),
    area_curso enum("TI","Arquitetura","Saude"),
    id_categoria int,
    CONSTRAINT fk_id_categoria FOREIGN KEY (id_categoria)
    REFERENCES tb_categoria (id_categoria)
);
INSERT INTO tb_categoria VALUES
(DEFAULT,"Tecnico","360"),
(DEFAULT,"Graduação","720"),
(DEFAULT,"Pós-Graduação","360+"),
(DEFAULT,"Mestrado","360+"),
(DEFAULT,"Doutorado","360+");
INSERT INTO tb_curso VALUES
(DEFAULT,"Edificações",5500.00,"Arquitetura",1),
(DEFAULT,"Ciencia da Computação",25000.00,"TI",2),
(DEFAULT,"Psicologia",40000.00,"Saude",3),
(DEFAULT,"Computação Grafica",70000.00,"TI",4),
(DEFAULT,"Medicina",100000.00,"Saude",5),
(DEFAULT,"ADS",7000.00,"TI",1),
(DEFAULT,"Ciencia de Dados",30000.00,"TI",2),
(DEFAULT,"MBA",40000.00,"TI",3);
select * from tb_curso
where valor_cursos > 50;
select * from tb_curso
where valor_cursos < 60 and valor_cursos > 3;
select * from tb_curso
where cursos like "%jav%";
select * from tb_curso
inner join tb_categoria
on tb_curso.id_curso = tb_categoria.id_categoria;
select id_curso,cursos,valor_cursos,area_curso,categoria_curso from tb_curso
inner join tb_categoria
on tb_curso.id_categoria = tb_categoria.id_categoria
where tb_categoria.id_categoria = 1;