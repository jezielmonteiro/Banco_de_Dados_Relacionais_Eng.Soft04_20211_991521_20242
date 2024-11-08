create database Escola;

use Escola;

create table professor (
	numProf integer not null auto_increment,
    nomeProf varchar(100),
    ruaProf varchar(100),
    cidadeProf varchar(100),

	constraint pk_numProfessor primary key (numProf)
);

create table aluno (
	numAluno integer not null auto_increment,
    nomeAluno varchar(100),
    ruaAluno varchar(100),
    cidadeAluno varchar(100),

	constraint pk_numAluno primary key (numAluno)
);

create table disciplina (
	codDisc integer not null auto_increment,
    nomeDisc varchar(100),
    nomeCurso varchar(100),
    qtdAulas integer,

	constraint pk_codDisciplina primary key (codDisc)
);

create table matricula (
    idMat integer not null auto_increment,
	numAluno integer not null,
    codDisc integer not null,
    ano varchar(4),

	constraint pk_idMatricula primary key (idMat),
	constraint fk_matricula_numAluno foreign key (numAluno)
		references aluno(numAluno),
	constraint fk_matricula_codDisc foreign key (codDisc)
		references disciplina(codDisc)
);

create table profdisciplina (
    idPD integer not null auto_increment,
    codDisc integer not null,
    numProf integer not null,
    ano varchar(4),

	constraint pk_idPD primary key (idPD),
	constraint fk_pd_codDisc foreign key (codDisc)
		references disciplina(codDisc),
	
    constraint fk_pd_numProf foreign key (numProf)
		references professor(numProf)
);
