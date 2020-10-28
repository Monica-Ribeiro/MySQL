select * from carro;
select * from pessoa;
insert into pessoa values(1,"julia"), (2,"marcio");
insert into carro values (1,"fiat","2019",1);

select * from carro 
inner join pessoa where carro.Pessoa_id_pessoa = pessoa.id_pessoa;