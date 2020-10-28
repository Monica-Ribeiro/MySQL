use db_rh2;
create table tb_funcionario(
id_funcionario int primary key auto_increment,
nome varchar(50),
sexo enum("M","F"),
salario decimal(8,2),
id_cargo int,
    constraint fk_cargo foreign key (id_cargo) references tb_cargo(id_cargo)
) engine = innodb;

insert into tb_funcionario values
(default,"joao","M",2200.00,1),
(default,"andre","M",2000.00,3),
(default,"julia","F",2100.00,2), #apagar os que ja criei
(default,"andressa","F",2400.00,2),
(default,"alex","M",2400.00,1),#apagar ate aqui
(default,"carlos","M",1400.00,3),
(default,"carolina","F",1500.00,2),
(default,"carolina","F",1500.00,2),
(default,"cintia","F",1700.00,1),
(default,"sandra","F",1800.00,3),
(default,"alexandre","M",1800.00,3),
(default,"rafael","M",1900.00,3),
(default,"michael","M",1600.00,3),
(default,"manuela","F",1500.00,3);

select * from tb_funcionario;
select * from tb_funcionario where salario >2000;
select * from tb_funcionario where salario >1000 and salario <2000;

select * from tb_funcionario
where nome like "c%%";
