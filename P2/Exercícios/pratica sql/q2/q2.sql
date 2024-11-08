use Escola;

insert into aluno (nomeAluno, ruaAluno, cidadeAluno)
values ('Maria','ABC','Vassouras');
insert into aluno (nomeAluno, ruaAluno, cidadeAluno)
values ('Bruna','GHY','Barra');
insert into aluno (nomeAluno, ruaAluno, cidadeAluno)
values ('Ana','FGH','Vassouras');
insert into aluno (nomeAluno, ruaAluno, cidadeAluno)
values ('José','BCD','Valença');
insert into aluno (nomeAluno, ruaAluno, cidadeAluno)
values ('João','DYT','Barra');

insert into professor (nomeProf, ruaProf, cidadeProf)
values ('Fabio','ABC','Volta Redonda');
insert into professor (nomeProf, ruaProf, cidadeProf)
values ('Alex','CBA','Barra');
insert into professor (nomeProf, ruaProf, cidadeProf)
values ('Alexandre','CAB','Vassouras');
insert into professor (nomeProf, ruaProf, cidadeProf)
values ('Rafael','BGT','Barra');
insert into professor (nomeProf, ruaProf, cidadeProf)
values ('Ana','YTR','Vassouras');

insert into disciplina (nomeDisc, nomeCurso, qtdAulas)
values ('Algoritmos','ESW',10);
insert into disciplina (nomeDisc, nomeCurso, qtdAulas)
values ('Web','ESW',15);
insert into disciplina (nomeDisc, nomeCurso, qtdAulas)
values ('Anatomia I','Medicina',15);
insert into disciplina (nomeDisc, nomeCurso, qtdAulas)
values ('Anatomia II','Medicina',17);
insert into disciplina (nomeDisc, nomeCurso, qtdAulas)
values ('Banco de Dados','ESW',15);
insert into disciplina (nomeDisc, nomeCurso, qtdAulas)
values ('Desenho Técnico','EC',15);
insert into disciplina (nomeDisc, nomeCurso, qtdAulas)
values ('Instalações','EE',15);

insert into matricula (numAluno, codDisc, ano)
values (1, 1,'2024');
insert into matricula (numAluno, codDisc, ano)
values (5, 1,'2024');
insert into matricula (numAluno, codDisc, ano)
values (4, 1,'2024');
insert into matricula (numAluno, codDisc, ano)
values (1, 2,'2024');
insert into matricula (numAluno, codDisc, ano)
values (5, 2,'2024');
insert into matricula (numAluno, codDisc, ano)
values (4,2,'2024');
insert into matricula (numAluno, codDisc, ano)
values (1,5,'2023');
insert into matricula (numAluno, codDisc, ano)
values (5,5,'2023');
insert into matricula (numAluno, codDisc, ano)
values (4,5,'2023');
insert into matricula (numAluno, codDisc, ano)
values (2,3,'2023');
insert into matricula (numAluno, codDisc, ano)
values (3,3,'2023');
insert into matricula (numAluno, codDisc, ano)
values (2,4,'2024');
insert into matricula (numAluno, codDisc, ano)
values (3,4,'2024');

insert into profdisciplina (codDisc, numProf, ano)
values (1,1,'2024');
insert into profdisciplina (codDisc, numProf, ano)
values (2,1,'2023');
insert into profdisciplina (codDisc, numProf, ano)
values (3,5,'2024');
insert into profdisciplina (codDisc, numProf, ano)
values (4,5,'2023');
insert into profdisciplina (codDisc, numProf, ano)
values (5,3,'2023');