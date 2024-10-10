create table companhia (
	idCompanhia integer not null,
    nomeCompanhia varchar(45) not null,
    cidade varchar(45) not null,
constraint pk_companhia primary key (idCompanhia)
);

create table gerente (
	idGerente integer not null,
    nomeGerente varchar(45) not null,
    nomeEmpregado varchar(45) not null,
constraint pk_gerente primary key (idGerente)
);

create table empregado (
	idEmpregado integer not null,
    idGerente integer not null,
    nomeEmpregado varchar(45),
    rua varchar(80),
    cidade varchar(45),
constraint pk_empregado primary key (idEmpregado),
constraint fk_empregado_idGerente foreign key (idGerente)
	references gerente(idGerente)
);

create table trabalha (
	idTrabalha integer not null,
    idEmpregado integer not null,
    idGerente integer not null,
    idCompanhia integer not null,
    nomeEmpregado varchar(45),
    nomeCompanhia varchar(45),
    salario decimal,
constraint pk_trabalha primary key (idTrabalha),
constraint fk_trabalha_idEmpregado foreign key (idEmpregado)
	references empregado(idEmpregado),
constraint fk_trabalha_idGerente foreign key (idGerente)
	references gerente(idGerente),
constraint fk_trabalha_idCompanhia foreign key (idCompanhia)
	references companhia(idCompanhia)
);
