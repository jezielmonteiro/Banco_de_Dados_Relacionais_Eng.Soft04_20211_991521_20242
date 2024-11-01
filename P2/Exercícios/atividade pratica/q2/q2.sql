create database q2;

use q2;

create table tipo_cliente (
	id int,
	descricao varchar(50),
constraint PK_TIPO_CLIENTE primary key (id)
);

create table cliente (
	id int,
	nome varchar(50),
	idade int,
	tp_cliente int,
	endereco varchar(150),
constraint PK_CLIENTE primary key (id),
constraint FK_TP_CLIENTE foreign key (tp_cliente) references tipo_cliente (id)
);

create table dependente (
	id int,
	nome varchar(50),
	idade int,
	id_cliente int,
constraint PK_CLIENTE primary key (id),
constraint FK_CLIENTE foreign key (id_cliente) references cliente (id)
);

insert into tipo_cliente values (1, 'NOVO');
insert into tipo_cliente values (2, 'FIDELIZADO');
insert into tipo_cliente values (3, 'PROBLEMÁTICO');
insert into cliente values (1, 'JOÃO', 30, 1, 'RUA ABC');
insert into cliente values (2, 'PAULO', 32, 2, 'RUA 123');
insert into cliente values (3, 'JOSÉ', 40, 2, 'RUA HJY');
insert into cliente values (4, 'MARIA', 27, 1, 'RUA AAA');
insert into cliente values (5, 'CLAUDIA', 28, 1, 'RUA KKK');
insert into cliente values (6, 'MARIANA', 22, 2, 'RUA LLL');
insert into cliente values (7, 'JULIANA', 30, 2, 'RUA OOO');
insert into dependente values (1, 'JOÃOZINHO', 12, 1);
insert into dependente values (2, 'MARIAZINHA', 10, 1);
insert into dependente values (3, 'PAULINHO', 12, 2);
insert into dependente values (4, 'JOAQUINA', 10, 2);
insert into dependente values (5, 'PAULINHO', 12, 3);
insert into dependente values (6, 'ZEZINHO', 8, 4);
