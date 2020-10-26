#treino criando tabelas
create table pessoa(
id int auto_increment,
nome varchar(30),
sexo enum("F","m"),
peso decimal(5,2),
altura decimal (3,2),
nacionalidade varchar (30),
primary key(id)
);