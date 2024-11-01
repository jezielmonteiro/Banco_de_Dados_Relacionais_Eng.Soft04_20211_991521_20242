use Estacionamento;

/*Questão 1*/

/*(A) Exiba a placa e o nome dos donos de todos os veículos.*/

select c.nome, v.placa
from cliente c, veiculo v
where (c.cpf = v.cliente_cpf);

/*(B) Exiba o CPF e o nome do cliente que possui o veiculo de placa “ABC1D34”.*/

select c.cpf, c.nome
from cliente c, veiculo v
where (c.cpf = v.cliente_cpf) and (v.placa = "ABC1D34");

/*(C) Exiba a placa e a cor do veículo que possui o código de estacionamento 1.*/

select v.placa, v.cor
from veiculo v, estaciona e
where (v.placa = e.veiculo_placa) and (e.cod = 1);

/*(D) Exiba a placa e o ano do veículo que possui o código de estacionamento 1.*/ 

select v.placa, v.ano
from veiculo v, estaciona e
where (v.placa = e.veiculo_placa) and (e.cod = 1);

/*(E) Exiba a placa, o ano do veículo e a descrição de seu modelo, se ele possuir ano a partir de 2000.*/

select v.placa, v.ano, m.desc_2
from veiculo v, modelo m
where (v.modelo_codmod = m.codmod) and (v.ano >= 2000);

/*(F) Exiba o endereço, a data de entrada e de saída dos estacionamentos do veículo de placa “JEG1010”.*/

select p.ender, e.dtentrada, e.dtsaida
from patio p, estaciona e
where (p.num = e.patio_num) and (e.veiculo_placa = "JEG1010");

/*(G) Exiba a quantidade de vezes que os veículos de cor verde estacionaram.*/

select count(v.cor)
from veiculo v, estaciona e
where (v.placa = e.veiculo_placa) and (v.cor = "Verde");

/*(H) Liste todos os clientes que possuem carro de modelo 1.*/

select c.nome
from cliente c, veiculo v, modelo m
where (c.cpf = v.cliente_cpf) and (v.modelo_codmod = m.codmod) and (v.modelo_codmod = 1);

/*(I) Liste as placas, os horários de entrada e saída dos veículos de cor verde.*/

select e.veiculo_placa, e.hsentrada, e.hssaida
from veiculo v, estaciona e
where (v.cor = "Verde");

/*(J) Liste todos os estacionamentos do veículo de placa “ABC1D34”.*/

select e.patio_num
from estaciona e, patio p
where (e.patio_num = p.num) and (e.veiculo_placa = "ABC1D34");

/*(K) Exiba o nome do cliente que possui o veículo cujo código do estacionamento é 2.*/

select c.nome
from cliente c, estaciona e, veiculo v
where (c.cpf = v.cliente_cpf) and (e.cod = 2);

/*(L) Exiba o CPF do cliente que possui o veículo cujo código do estacionamento é 3.*/

select v.cliente_cpf, e.cod
from veiculo v, estaciona e, cliente c
where (v.cliente_cpf = c.cpf) and (e.cod = 3);

/*(M) Exiba a descrição do modelo do veículo cujo código do estacionamento é 2.*/

select m.desc_2
from modelo m, estaciona e, veiculo v
where (m.codmod = v.modelo_codmod) and (e.cod = 2);

/*(N) Exiba a placa, o nome dos donos e a descrição dos os modelos de todos os veículos.*/

select v.placa, c.nome, m.desc_2
from veiculo v, cliente c, modelo m
where (v.cliente_cpf = c.cpf) and (m.codmod = v.modelo_codmod)
