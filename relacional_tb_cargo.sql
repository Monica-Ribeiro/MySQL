create table tb_cargo(
id_cargo int primary key auto_increment,
nome_cargo varchar(50),
nivel_cargo enum("1","2","3")
);
insert into tb_cargo values
(default,"secretaria","2"),
(default,"RH","1"),
(default,"TI","3"),
(default,"marketing","3"),
(default,"operacional","3");
select * from tb_cargo;