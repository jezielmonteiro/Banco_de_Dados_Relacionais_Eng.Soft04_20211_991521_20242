create database Estacionamento;

use Estacionamento;

create table cliente (
	cpf integer not null,
    nome varchar(60) not null,
    dtNasc date not null,
constraint pk_cpf primary key (cpf)
);

create table modelo (
	codMod integer not null,
    desc_2 varchar(40),
constraint pk_modelo primary key (codMod)
);

create table veiculo (
	placa varchar(8) not null,
    codMod integer not null,
    cpf integer not null,
    cor varchar(20) not null,
constraint pk_veiculo primary key (placa),
constraint fk_modelo_codmod foreign key (codMod)
	references modelo(codMod),
constraint fk_cliente_cpf foreign key (cpf)
	references cliente(cpf)
);

create table patio (
	num integer not null,
    ender varchar(40) not null,
    capacidade integer not null,
constraint pk_patio primary key (num)
);

create table estaciona (
	cod integer not null,
    num integer not null,
    placa varchar(8) not null,
    dtEntrada varchar(10),
    dtSaida varchar(10),
    hsEntrada varchar(10),
    hsSaida varchar(10),
constraint pk_estaciona primary key (cod),
constraint fk_patio_num foreign key (num)
	references patio(num),
constraint fk_veiculo_placa foreign key (placa)
	references veiculo(placa)
);
