/*Registros por Tabela*/

use MelhorEnvio;

/*Usuário*/

insert into usuario (idUsuario, nomeUser, cpf, telefone, endereco)
values (1, 'João', '19901101110', '9111166171', 'Rua ABC');
insert into usuario (idUsuario, nomeUser, cpf, telefone, endereco)
values (2, 'Maria', '19902202220', '9221166272', 'Rua DEF');
insert into usuario (idUsuario, nomeUser, cpf, telefone, endereco)
values (3, 'Roberto', '19903303330', '9331166373', 'Rua GHI');
insert into usuario (idUsuario, nomeUser, cpf, telefone, endereco)
values (4, 'Fernando', '19904404440', '9441166474', 'Rua JKL');
insert into usuario (idUsuario, nomeUser, cpf, telefone, endereco)
values (5, 'Júlia', '19905505550', '9551166575', 'Rua LMN');
insert into usuario (idUsuario, nomeUser, cpf, telefone, endereco)
values (6, 'José', '19906606660', '9661166676', 'Rua OPQ');
insert into usuario (idUsuario, nomeUser, cpf, telefone, endereco)
values (7, 'Amanda', '19907707770', '9771166777', 'Rua RST');
insert into usuario (idUsuario, nomeUser, cpf, telefone, endereco)
values (8,'Flávia', '19908808880', '9881166878', 'Rua UVW');
insert into usuario (idUsuario, nomeUser, cpf, telefone, endereco)
values (9, 'Joana', '19909909990', '9991166979', 'Rua XYZ');
insert into usuario (idUsuario, nomeUser, cpf, telefone, endereco)
values (10, 'Ana', '19901001010', '9101166070', 'Rua CBA');

/*Pagamento*/

insert into pagamento (idPagamento, valorPag, dtPagamento, idUsuario)
values (1, 500, '2024-01-15', 1);
insert into pagamento (idPagamento, valorPag, dtPagamento, idUsuario)
values (2, 600, '2024-02-07', 2);
insert into pagamento (idPagamento, valorPag, dtPagamento, idUsuario)
values (3, 700, '2024-03-04', 3);
insert into pagamento (idPagamento, valorPag, dtPagamento, idUsuario)
values (4, 800, '2024-04-09', 4);
insert into pagamento (idPagamento, valorPag, dtPagamento, idUsuario)
values (5, 900, '2024-05-11', 5);
insert into pagamento (idPagamento, valorPag, dtPagamento, idUsuario)
values (6, 1000, '2024-06-10', 6);
insert into pagamento (idPagamento, valorPag, dtPagamento, idUsuario)
values (7, 1100, '2024-07-02', 7);
insert into pagamento (idPagamento, valorPag, dtPagamento, idUsuario)
values (8, 1200, '2024-08-26', 8);
insert into pagamento (idPagamento, valorPag, dtPagamento, idUsuario)
values (9, 1300, '2024-09-30', 9);
insert into pagamento (idPagamento, valorPag, dtPagamento, idUsuario)
values (10, 1400, '2024-10-06', 10);

/*Endereço*/

insert into endereco (idEndereco, numero, rua, bairro, cep)
values (1, 42, 'Rua CBA', 'Bairro Jardim Amaro', '21601421');
insert into endereco (idEndereco, numero, rua, bairro, cep)
values (2, 192, 'Rua FED', 'Bairro Presidente Prudente', '22602422');
insert into endereco (idEndereco, numero, rua, bairro, cep)
values (3, 31, 'Rua IHG', 'Bairro Joaquim Silva', '23603423');
insert into endereco (idEndereco, numero, rua, bairro, cep)
values (4, 91, 'Rua LKJ', 'Bairro Carlos Abreu', '24604424');
insert into endereco (idEndereco, numero, rua, bairro, cep)
values (5, 84, 'Rua ONM', 'Bairro Maria Antonieta', '25605425');
insert into endereco (idEndereco, numero, rua, bairro, cep)
values (6, 73, 'Rua RQP', 'Bairro Santa Luzia', '26606426');
insert into endereco (idEndereco, numero, rua, bairro, cep)
values (7, 175, 'Rua UTS', 'Bairro Sossego', '27607427');
insert into endereco (idEndereco, numero, rua, bairro, cep)
values (8, 97, 'Rua XWV', 'Bairro Lagoa Verde', '28608428');
insert into endereco (idEndereco, numero, rua, bairro, cep)
values (9, 23, 'Rua AZY', 'Bairro Jardim Alegre', '29609429');
insert into endereco (idEndereco, numero, rua, bairro, cep)
values (10, 56, 'Rua BYZ', 'Bairro Monte Belo', '20600420');

/*TipoEncomenda*/

insert into tipo_encomenda (idTipoEncomenda, nomeTipo)
values (1, 'Leve');
insert into tipo_encomenda (idTipoEncomenda, nomeTipo)
values (2, 'Pesada');
insert into tipo_encomenda (idTipoEncomenda, nomeTipo)
values (3, 'Pesada');
insert into tipo_encomenda (idTipoEncomenda, nomeTipo)
values (4, 'Leve');
insert into tipo_encomenda (idTipoEncomenda, nomeTipo)
values (5, 'Leve');
insert into tipo_encomenda (idTipoEncomenda, nomeTipo)
values (6, 'Pesada');
insert into tipo_encomenda (idTipoEncomenda, nomeTipo)
values (7, 'Pesada');
insert into tipo_encomenda (idTipoEncomenda, nomeTipo)
values (8, 'Leve');
insert into tipo_encomenda (idTipoEncomenda, nomeTipo)
values (9, 'Pesada');
insert into tipo_encomenda (idTipoEncomenda, nomeTipo)
values (10, 'Leve');

/*Encomenda*/

insert into encomenda (idEncomenda, dtEncomenda, codRastreio, idEndereco, idUsuario, idTipoEncomenda)
values (1, '2024-02-23', 'A23022024BR', 1, 1, 1);
insert into encomenda (idEncomenda, dtEncomenda, codRastreio, idEndereco, idUsuario, idTipoEncomenda)
values (2, '2024-03-04', 'B04032024BR', 2, 2, 2);
insert into encomenda (idEncomenda, dtEncomenda, codRastreio, idEndereco, idUsuario, idTipoEncomenda)
values (3, '2024-04-12', 'C12042024BR', 3, 3, 3);
insert into encomenda (idEncomenda, dtEncomenda, codRastreio, idEndereco, idUsuario, idTipoEncomenda)
values (4, '2024-05-19', 'D19052024BR', 4, 4, 4);
insert into encomenda (idEncomenda, dtEncomenda, codRastreio, idEndereco, idUsuario, idTipoEncomenda)
values (5, '2024-06-21', 'E21062024BR', 5, 5, 5);
insert into encomenda (idEncomenda, dtEncomenda, codRastreio, idEndereco, idUsuario, idTipoEncomenda)
values (6, '2024-07-09', 'F09072024BR', 6, 6, 6);
insert into encomenda (idEncomenda, dtEncomenda, codRastreio, idEndereco, idUsuario, idTipoEncomenda)
values (7, '2024-08-10', 'G10082024BR', 7, 7, 7);
insert into encomenda (idEncomenda, dtEncomenda, codRastreio, idEndereco, idUsuario, idTipoEncomenda)
values (8, '2024-09-29', 'H29092024BR', 8, 8, 8);
insert into encomenda (idEncomenda, dtEncomenda, codRastreio, idEndereco, idUsuario, idTipoEncomenda)
values (9, '2024-10-01', 'I01102024BR', 9, 9, 9);
insert into encomenda (idEncomenda, dtEncomenda, codRastreio, idEndereco, idUsuario, idTipoEncomenda)
values (10, '2024-11-17', 'J17112024BR', 10, 10, 10);

/*Transportadora*/

insert into transportadora (idTransportadora, nomeTransportadora, cnpj)
values (1, 'Transportadora 1', 1234567800000);
insert into transportadora (idTransportadora, nomeTransportadora, cnpj)
values (2, 'Transportadora 2', '9101112300000');
insert into transportadora (idTransportadora, nomeTransportadora, cnpj)
values (3, 'Transportadora 3', '1415161700000');
insert into transportadora (idTransportadora, nomeTransportadora, cnpj)
values (4, 'Transportadora 4', '1819202100000');
insert into transportadora (idTransportadora, nomeTransportadora, cnpj)
values (5, 'Transportadora 5', '2223242500000');
insert into transportadora (idTransportadora, nomeTransportadora, cnpj)
values (6, 'Transportadora 6', '2627282900000');
insert into transportadora (idTransportadora, nomeTransportadora, cnpj)
values (7, 'Transportadora 7', '3031323300000');
insert into transportadora (idTransportadora, nomeTransportadora, cnpj)
values (8, 'Transportadora 8', '3435363700000');
insert into transportadora (idTransportadora, nomeTransportadora, cnpj)
values (9, 'Transportadora 9', '3839404100000');
insert into transportadora (idTransportadora, nomeTransportadora, cnpj)
values (10, 'Transportadora 10', '42434400000');

/*Enco_Transportadora*/
insert into enco_transportadora (idEnco_Transportadora, idEncomenda, idEndereco, idUsuario, idTransportadora)
values (1, 1, 1, 1, 1);
insert into enco_transportadora (idEnco_Transportadora, idEncomenda, idEndereco, idUsuario, idTransportadora)
values (2, 2, 2, 2, 2);
insert into enco_transportadora (idEnco_Transportadora, idEncomenda, idEndereco, idUsuario, idTransportadora)
values (3, 3, 3, 3, 3);
insert into enco_transportadora (idEnco_Transportadora, idEncomenda, idEndereco, idUsuario, idTransportadora)
values (4, 4, 4, 4, 4);
insert into enco_transportadora (idEnco_Transportadora, idEncomenda, idEndereco, idUsuario, idTransportadora)
values (5, 5, 5, 5, 5);
insert into enco_transportadora (idEnco_Transportadora, idEncomenda, idEndereco, idUsuario, idTransportadora)
values (6, 6, 6, 6, 6);
insert into enco_transportadora (idEnco_Transportadora, idEncomenda, idEndereco, idUsuario, idTransportadora)
values (7, 7, 7, 7, 7);
insert into enco_transportadora (idEnco_Transportadora, idEncomenda, idEndereco, idUsuario, idTransportadora)
values (8, 8, 8, 8, 8);
insert into enco_transportadora (idEnco_Transportadora, idEncomenda, idEndereco, idUsuario, idTransportadora)
values (9, 9, 9, 9, 9);
insert into enco_transportadora (idEnco_Transportadora, idEncomenda, idEndereco, idUsuario, idTransportadora)
values (10, 10, 10, 10, 10);

/*Coleta*/

insert into coleta (idColeta, dtColeta, idTransportadora)
values (1, '2024-03-21', 1);
insert into coleta (idColeta, dtColeta, idTransportadora)
values (2, '2024-04-07', 2);
insert into coleta (idColeta, dtColeta, idTransportadora)
values (3, '2024-05-11', 3);
insert into coleta (idColeta, dtColeta, idTransportadora)
values (4, '2024-06-08', 4);
insert into coleta (idColeta, dtColeta, idTransportadora)
values (5, '2024-07-27', 5);
insert into coleta (idColeta, dtColeta, idTransportadora)
values (6, '2024-08-04', 6);
insert into coleta (idColeta, dtColeta, idTransportadora)
values (7, '2024-09-13', 7);
insert into coleta (idColeta, dtColeta, idTransportadora)
values (8, '2024-10-24', 8);
insert into coleta (idColeta, dtColeta, idTransportadora)
values (9, '2024-11-16', 9);
insert into coleta (idColeta, dtColeta, idTransportadora)
values (10, '2024-12-30', 10);

/*Entrega*/

insert into entrega (idEntrega, dtEntrega, idTransportadora)
values (1, '2024-04-09', 1);
insert into entrega (idEntrega, dtEntrega, idTransportadora)
values (2, '2024-05-20', 2);
insert into entrega (idEntrega, dtEntrega, idTransportadora)
values (3, '2024-06-14', 3);
insert into entrega (idEntrega, dtEntrega, idTransportadora)
values (4, '2024-07-07', 4);
insert into entrega (idEntrega, dtEntrega, idTransportadora)
values (5, '2024-08-28', 5);
insert into entrega (idEntrega, dtEntrega, idTransportadora)
values (6, '2024-09-19', 6);
insert into entrega (idEntrega, dtEntrega, idTransportadora)
values (7, '2024-10-22', 7);
insert into entrega (idEntrega, dtEntrega, idTransportadora)
values (8, '2024-11-17', 8);
insert into entrega (idEntrega, dtEntrega, idTransportadora)
values (9, '2024-12-03', 9);
insert into entrega (idEntrega, dtEntrega, idTransportadora)
values (10, '2025-01-12', 10);

/*ValorFrete*/

insert into valor_frete (idValorFrete, valorFrete)
values (1, 50);
insert into valor_frete (idValorFrete, valorFrete)
values (2, 25);
insert into valor_frete (idValorFrete, valorFrete)
values (3, 30);
insert into valor_frete (idValorFrete, valorFrete)
values (4, 18);
insert into valor_frete (idValorFrete, valorFrete)
values (5, 42);
insert into valor_frete (idValorFrete, valorFrete)
values (6, 23);
insert into valor_frete (idValorFrete, valorFrete)
values (7, 47);
insert into valor_frete (idValorFrete, valorFrete)
values (8, 31);
insert into valor_frete (idValorFrete, valorFrete)
values (9, 29);
insert into valor_frete (idValorFrete, valorFrete)
values (10, 51);

/*CategoriaFrete*/

insert into categoria_frete (idCategoriaFrete, nomeCategoria)
values (1, 'Rápida');
insert into categoria_frete (idCategoriaFrete, nomeCategoria)
values (2, 'Normal');
insert into categoria_frete (idCategoriaFrete, nomeCategoria)
values (3, 'Normal');
insert into categoria_frete (idCategoriaFrete, nomeCategoria)
values (4, 'Normal');
insert into categoria_frete (idCategoriaFrete, nomeCategoria)
values (5, 'Rápida');
insert into categoria_frete (idCategoriaFrete, nomeCategoria)
values (6, 'Normal');
insert into categoria_frete (idCategoriaFrete, nomeCategoria)
values (7, 'Rápida');
insert into categoria_frete (idCategoriaFrete, nomeCategoria)
values (8, 'Normal');
insert into categoria_frete (idCategoriaFrete, nomeCategoria)
values (9, 'Normal');
insert into categoria_frete (idCategoriaFrete, nomeCategoria)
values (10, 'Rápida');

/*Frete*/

insert into frete (idFrete, dtPrevista, cidOrigem, cidDestino, idTransportadora, idValorFrete, idCategoriaFrete)
values (1, '2024-04-09', 'Valença', 'Volta Redonda', 1, 1, 1);
insert into frete (idFrete, dtPrevista, cidOrigem, cidDestino, idTransportadora, idValorFrete, idCategoriaFrete)
values (2, '2024-05-20', 'Rio de Janeiro', 'São Paulo', 2, 2, 2);
insert into frete (idFrete, dtPrevista, cidOrigem, cidDestino, idTransportadora, idValorFrete, idCategoriaFrete)
values (3, '2024-06-14', 'Maranhão', 'Piauí', 3, 3, 3);
insert into frete (idFrete, dtPrevista, cidOrigem, cidDestino, idTransportadora, idValorFrete, idCategoriaFrete)
values (4, '2024-07-07', 'Espírito Santo', 'Mato Grosso', 4, 4, 4);
insert into frete (idFrete, dtPrevista, cidOrigem, cidDestino, idTransportadora, idValorFrete, idCategoriaFrete)
values (5, '2024-08-28', 'Paraná', 'São Paulo', 5, 5, 5);
insert into frete (idFrete, dtPrevista, cidOrigem, cidDestino, idTransportadora, idValorFrete, idCategoriaFrete)
values (6, '2024-09-19', 'São Paulo', 'Valença', 6, 6, 6);
insert into frete (idFrete, dtPrevista, cidOrigem, cidDestino, idTransportadora, idValorFrete, idCategoriaFrete)
values (7, '2024-10-22', 'Belo Horizonte', 'Vassouras', 7, 7, 7);
insert into frete (idFrete, dtPrevista, cidOrigem, cidDestino, idTransportadora, idValorFrete, idCategoriaFrete)
values (8, '2024-11-17', 'Manaus', 'Mato Grosso do Sul', 8, 8, 8);
insert into frete (idFrete, dtPrevista, cidOrigem, cidDestino, idTransportadora, idValorFrete, idCategoriaFrete)
values (9, '2024-12-3', 'Londrina', 'Barra do Piraí', 9, 9, 9);
insert into frete (idFrete, dtPrevista, cidOrigem, cidDestino, idTransportadora, idValorFrete, idCategoriaFrete)
values (10, '2025-01-12', 'Rio de Janeiro', 'Juiz de Fora', 10, 10, 10);

/*SeguroFrete*/

insert into seguro_frete (idSeguroFrete, nomeSeguro)
values (1, 'Seguro 3');
insert into seguro_frete (idSeguroFrete, nomeSeguro)
values (2, 'Seguro 1');
insert into seguro_frete (idSeguroFrete, nomeSeguro)
values (3, 'Seguro 1');
insert into seguro_frete (idSeguroFrete, nomeSeguro)
values (4, 'Seguro 2');
insert into seguro_frete (idSeguroFrete, nomeSeguro)
values (5, 'Seguro 3');
insert into seguro_frete (idSeguroFrete, nomeSeguro)
values (6, 'Seguro 3');
insert into seguro_frete (idSeguroFrete, nomeSeguro)
values (7, 'Seguro 2');
insert into seguro_frete (idSeguroFrete, nomeSeguro)
values (8, 'Seguro 2');
insert into seguro_frete (idSeguroFrete, nomeSeguro)
values (9, 'Seguro 1');
insert into seguro_frete (idSeguroFrete, nomeSeguro)
values (10, 'Seguro 3');

/*Frete_SeguroFrete*/

insert into frete_segurofrete (idFrete_SeguroFrete, idFrete, idTransportadora, idValorFrete, idCategoriaFrete, idSeguroFrete)
values (1, 1, 1, 1, 1, 1);
insert into frete_segurofrete (idFrete_SeguroFrete, idFrete, idTransportadora, idValorFrete, idCategoriaFrete, idSeguroFrete)
values (2, 2, 2, 2, 2, 2);
insert into frete_segurofrete (idFrete_SeguroFrete, idFrete, idTransportadora, idValorFrete, idCategoriaFrete, idSeguroFrete)
values (3, 3, 3, 3, 3, 3);
insert into frete_segurofrete (idFrete_SeguroFrete, idFrete, idTransportadora, idValorFrete, idCategoriaFrete, idSeguroFrete)
values (4, 4, 4, 4, 4, 4);
insert into frete_segurofrete (idFrete_SeguroFrete, idFrete, idTransportadora, idValorFrete, idCategoriaFrete, idSeguroFrete)
values (5, 5, 5, 5, 5, 5);
insert into frete_segurofrete (idFrete_SeguroFrete, idFrete, idTransportadora, idValorFrete, idCategoriaFrete, idSeguroFrete)
values (6, 6, 6, 6, 6, 6);
insert into frete_segurofrete (idFrete_SeguroFrete, idFrete, idTransportadora, idValorFrete, idCategoriaFrete, idSeguroFrete)
values (7, 7, 7, 7, 7, 7);
insert into frete_segurofrete (idFrete_SeguroFrete, idFrete, idTransportadora, idValorFrete, idCategoriaFrete, idSeguroFrete)
values (8, 8, 8, 8, 8, 8);
insert into frete_segurofrete (idFrete_SeguroFrete, idFrete, idTransportadora, idValorFrete, idCategoriaFrete, idSeguroFrete)
values (9, 9, 9, 9, 9, 9);
insert into frete_segurofrete (idFrete_SeguroFrete, idFrete, idTransportadora, idValorFrete, idCategoriaFrete, idSeguroFrete)
values (10, 10, 10, 10, 10, 10);
