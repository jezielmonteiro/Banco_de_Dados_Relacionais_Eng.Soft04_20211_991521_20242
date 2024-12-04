/*Consultas utilizando 'JOIN'*/

use MelhorEnvio;

/*(A) Liste o ID da encomenda vinculada a Transportadora 6 e o nome do dono dela.*/

select e.idEncomenda, u.nomeUser
from encomenda e 
join usuario u on (u.idUsuario = e.idUsuario)
join enco_transportadora et on (e.idEncomenda = et.idEncomenda)
join transportadora t on (t.idTransportadora = et.idTransportadora)
where (t.nomeTransportadora = "Transportadora 6");

/*(B) Exiba o CPF e o nome do usuário, o nome da transportadora responsável pela encomenda, onde a encomenda possui o código de rastreio igual a H29092024BR e sua data igual a 29/09/24.*/

select u.nomeUser, u.cpf, t.nomeTransportadora
from usuario u
join encomenda e on (u.idUsuario = e.idUsuario)
join enco_transportadora et on (e.idEncomenda = et.idEncomenda)
join transportadora t on (t.idTransportadora = et.idTransportadora)
where (e.codRastreio = 'H29092024BR' and e.dtEncomenda = '2024-09-29');

/*(C) Exiba a data da encomenda vinculada a Transportadora 3, o nome do dono, sua data de entrega e o valor e categoria do frete.*/

select e.dtEncomenda, u.nomeUser, ent.dtEntrega, vf.valorFrete, cf.nomeCategoria
from encomenda e
join usuario u on (u.idUsuario = e.idUsuario)
join enco_transportadora et on (e.idEncomenda = et.idEncomenda)
join transportadora t on (t.idTransportadora = et.idTransportadora)
join entrega ent on (t.idTransportadora = ent.idTransportadora)
join frete f on (f.idTransportadora = t.idTransportadora)
join valor_frete vf on (vf.idValorFrete = f.idValorFrete)
join categoria_frete cf on (cf.idCategoriaFrete = f.idCategoriaFrete)
where (t.nomeTransportadora = "Transportadora 3");
