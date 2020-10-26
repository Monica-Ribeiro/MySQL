create database db_chaves;
use db_chaves;

CREATE TABLE Pessoas 
(ID_Pessoa integer PRIMARY KEY AUTO_INCREMENT,
Nome varchar(255));

CREATE TABLE Carro
	(ID_Carro integer PRIMARY KEY AUTO_INCREMENT,
    Nome varchar(255),
    Marca varchar(255),
    ID_Pessoa integer,
    constraint fk_pessoas foreign key (ID_pessoa) references pessoas (ID_pessoa));
    insert into Pessoas (Nome) values    ('Juliana'),    ('Julio'),    ('Márcio');  

insert into Carro (Nome, Marca, Id_Pessoa) values    ('Gol', 'Wolks',2 ),    ('Palio', 'Fiat', 3); 
select * from pessoas
inner join carro
where pessoas.ID_pessoa = carro.ID_pessoa   
truncate table pessoas