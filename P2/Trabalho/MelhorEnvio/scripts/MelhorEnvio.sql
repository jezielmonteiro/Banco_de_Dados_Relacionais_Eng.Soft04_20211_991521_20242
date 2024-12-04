create database MelhorEnvio;

use MelhorEnvio;

create table usuario (
    idUsuario integer not null,
    nomeUser varchar(100),
    cpf varchar(11),
    endereco varchar(100),
    telefone varchar(45),

constraint pk_usuario primary key (idUsuario)
);

create table pagamento (
    idPagamento integer not null,
    idUsuario integer not null,
    valorPag float,
    dtPagamento date,
    
constraint pk_pagamento primary key (idPagamento),
constraint fk_pagamento_idUsuario foreign key (idUsuario)
	references usuario(idUsuario)
);

create table endereco (
    idEndereco integer not null,
    cep varchar(10),
    bairro varchar(100),
    rua varchar(45),
    numero INT,

constraint pk_endereco primary key (idEndereco)
);

create table tipo_encomenda (
    idTipoEncomenda integer not null,
    nomeTipo varchar(45),

constraint pk_tipo_encomenda primary key (idTipoEncomenda)
);

create table encomenda (
    idEncomenda integer not null,
    idUsuario integer not null,
    idEndereco integer not null,
    idTipoEncomenda integer not null,
    codRastreio VARCHAR(45),
    dtEncomenda date,
    
constraint pk_encomenda primary key (idEncomenda),
constraint fk_encomenda_idUsuario foreign key (idUsuario)
	references usuario(idUsuario),
constraint fk_encomenda_idEndereco foreign key (idEndereco)
	references endereco(idEndereco),
constraint fk_encomenda_idTipoEncomenda foreign key (idTipoEncomenda)
	references tipo_encomenda(idTipoEncomenda)
);

create table transportadora (
    idTransportadora integer not null,
    nomeTransportadora varchar(100),
    cnpj varchar(100),

constraint pk_transportadora primary key (idTransportadora)
);

create table enco_transportadora (
    idEnco_Transportadora integer not null,
    idEncomenda integer not null,
    idTransportadora integer not null,
    idEndereco integer not null,
    idUsuario integer not null,

constraint pk_enco_transportadora primary key (idEnco_Transportadora),
constraint fk_encotransportadora_idEncomenda foreign key (idEncomenda)
	references encomenda(idEncomenda),
constraint fk_encotransportadora_idTransportadora foreign key (idTransportadora)
	references transportadora(idTransportadora),
constraint fk_encotransportadora_idEndereco foreign key (idEndereco)
	references encomenda(idEndereco),
constraint fk_encotransportadora_idUsuario foreign key (idUsuario)
	references encomenda(idUsuario)
);

create table coleta (
    idColeta integer not null,
    idTransportadora integer not null,
    dtColeta date,
    
constraint pk_coleta primary key (idColeta),
constraint fk_coleta_idTransportadora foreign key (idTransportadora)
	references transportadora(idTransportadora)
);

create table entrega (
    idEntrega integer not null,
    idTransportadora integer not null,
    dtEntrega date,
    
constraint pk_entrega primary key (idEntrega),
constraint fk_entrega_idTransportadora foreign key (idTransportadora)
	references transportadora(idTransportadora)
);

create table categoria_frete (
    idCategoriaFrete integer not null,
    nomeCategoria varchar(45),

constraint pk_categoria_frete primary key (idCategoriaFrete)
);

create table seguro_frete (
    idSeguroFrete integer not null,
    nomeSeguro varchar(45),
    
constraint pk_seguro_frete primary key (idSeguroFrete)
);

create table valor_frete (
    idValorFrete integer not null,
    valorFrete decimal,

constraint pk_valor_frete primary key (idValorFrete)
);

create table frete (
    idFrete integer not null,
    idTransportadora integer not null,
    idValorFrete integer not null,
    idCategoriaFrete integer not null,
    dtPrevista date,
    cidOrigem varchar(45),
    cidDestino varchar(45),
	
constraint pk_frete primary key (idFrete),
constraint fk_frete_idTransportadora foreign key (idTransportadora)
	references transportadora(idTransportadora),
constraint fk_frete_idValorFrete foreign key (idValorFrete)
	references valor_frete(idValorFrete),
constraint fk_frete_idCategoria_Frete foreign key (idCategoriaFrete)
	references categoria_frete(idCategoriaFrete)
);

create table frete_segurofrete (
	idFrete_SeguroFrete integer not null,
    idFrete integer not null,
    idTransportadora integer not null,
    idValorFrete integer not null,
    idCategoriaFrete integer not null,
    idSeguroFrete integer not null,
    
constraint pk_frete_segurofrete primary key (idFrete_SeguroFrete),
constraint fk_segurofrete_idFrete foreign key (idFrete)
	references frete(idFrete),
constraint fk_segurofrete_idTransportadora foreign key (idTransportadora)
	references frete(idTransportadora),
constraint fk_segurofrente_idValorFrete foreign key (idValorFrete)
	references frete(idValorFrete),
constraint fk_segurofrete_idCategoriaFrete foreign key (idCategoriaFrete)
	references frete(idCategoriaFrete),
constraint fk_segurofrete_idSeguroFrete foreign key (idSeguroFrete)
	references seguro_frete(idSeguroFrete)
);
