create table funcionarios(
id int not null auto_increment,
nome varchar (30) not null,
nascimento date,
sexo enum ("M","F"),
peso decimal (5,2),
altura decimal(3,2),
nacionalidade varchar (20) default "brasil",
primary key(id)
)engine=innodb;
insert into funcionarios values
(default,"alex tenorio da silva","2018-02-03","M","68.5","2.05",default);
select * from funcionarios;

insert into funcionarios (nome,nascimento,sexo,peso,altura)values
("gabriela","1998-02-03","F","58.5","1.60"),
("joao","1998-02-04","M","68.5","1.80"),
("marcio","1998-02-04","M","69.7","1.70");

select * from funcionarios where peso > 67;

