create database ex2;

use ex2;

create table tamanho (
	idTamanho integer not null,
    nomeTamanho varchar(45),
constraint pk_tamanho primary key (idTamanho)
);

create table pizza (
	idPizza integer not null,
    idTamanho integer not null,
    nomePizza varchar(45) not null,
    valorPizza decimal not null,
constraint pk_pizza primary key (idPizza),
constraint fk_pizza_idTamanho foreign key (idTamanho)
	references tamanho(idTamanho)
);

create table ingrediente (
	idIngrediente integer not null,
    nomeIngrediente varchar(45) not null,
constraint pk_ingrediente primary key (idIngrediente)
);

create table preparo (
	idPreparo integer not null,
    idIngrediente integer not null,
    idPizza integer not null,
    idTamanho integer not null,
constraint pk_preparo primary key (idPreparo),
constraint fk_preparo_idIngrediente foreign key (idIngrediente)
	references ingrediente(idIngrediente),
constraint fk_preparo_idPizza foreign key (idPizza)
	references pizza(idPizza),
constraint fk_preparo_idTamanho foreign key (idTamanho)
	references tamanho(idTamanho)
);
