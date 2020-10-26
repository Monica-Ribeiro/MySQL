drop database if exists empresa;
create database empresa;
use empresa;
create table funcionarios(
nome varchar (50),
nascimento date,
sexo enum("M","F"),
nacionalidade varchar(50),
salario decimal(8,2)
);
insert into funcionarios values ("claudio","1996-11-2","M","brasileiro",1900.00);
insert into funcionarios values ("maria","1970-10-3","F","brasileira",1500.00);
insert into funcionarios values ("joao","1980-12-5","M","brasileiro",1600.00);
select * from funcionarios where salario >1500.00;
select * from funcionarios where salario <1500.00;
update funcionarios set salario = 2000.00 where nome= "maria";
select * from funcionarios

