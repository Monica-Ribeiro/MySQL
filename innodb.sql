begin;
insert into colaboradores (nome,nascimento,sexo,peso,altura)
VALUES			('Jacqueline','1998-02-03','F','58.5',1.60);
            select * from colaboradores;
rollback;
			select * from colaboradores;
begin;
insert into colaboradores (nome,nascimento,sexo,peso,altura)
VALUES			('Jacqueline B','1998-02-03','F','58.5',1.60);
            select * from colaboradores;
commit;
			select * from colaboradores;