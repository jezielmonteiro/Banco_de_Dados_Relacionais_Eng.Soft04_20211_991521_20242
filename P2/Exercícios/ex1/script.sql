create table pessoa (
	idPessoa integer not null,
    nome varchar(45) not null,
    idade integer not null,
    email varchar(100) not null,
    telefone varchar(45) not null,
constraint pk_pessoa primary key (idPessoa)
);

create table trabalho (
	idTrabalho integer not null,
    idPessoa integer not null,
    idProjeto integer not null,
constraint pk_trabalho primary key (idTrabalho),
constraint fk_trabalho_idPessoa foreign key (idPessoa)
	references pessoa(idPessoa),
constraint fk_trabalho_idProjeto foreign key (idProjeto)
	references projeto(idProjeto)
);

create table projeto (
	idProjeto integer not null,
    nome varchar(45) not null,
    descricao varchar(100) not null,
    stats varchar(45) not null,
    dtInicio date not null,
    dtConclusao date not null,
constraint pk_projeto primary key (idProjeto)
);

create table produção (
	idProducao integer not null,
    idProjeto integer not null,
    idPeca integer not null,
constraint pk_producao primary key (idProducao),
constraint fk_producao_idProjeto foreign key (idProjeto)
	references projeto(idProjeto),
constraint fk_producao_idPeca foreign key (idPeca)
	references peça(idPeca)
);

create table peça (
	idPeca integer not null,
    nome varchar(45),
    preco decimal,
    tipo varchar(45),
constraint pk_peca primary key (idPeca)
);
