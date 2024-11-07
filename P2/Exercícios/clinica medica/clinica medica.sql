/*Clínica Médica*/

/*(A) Qual foi o nome e CPF dos pacientes que se consultaram com o doutor Pedro Moraes no dia 10/07/97?*/

select p.nome, p.cpf
from pacientes p
join consulta c on (p.id_paciente = c.id_paciente)
join medico m on (m.id_medico = c.id_medico)
where (m.nome = "Pedro Moraes") and (c.dt = "10/07/97")

/*(B) Quanto a paciente Marta Silva, RG 24689/RJ, gastou com medicamentos durante o mês de Abril?*/

select r.preco_medicamentos
from receita r
join consulta c on (c.id_consulta = r.id_consulta)
join paciente p on (p.id_paciente = c.id_paciente)
join medicamento_receita mr on (mr.id_receita = r.id_receita)
join medicamento md on (md.id_medicamento = mr.id_medicamento)
where (p.nome = "Marta Silva") and (p.rg = "24689/RJ") and (r.mes = "Abril")

/*(C) Quais foram os medicamentos de tarja preta prescritos na receita de número 45123?*/

select md.nome
from medicamento md
join medicamento_receita mr on (md.id_medicamento = mr.id_medicamento)
join receita r on (r.id_receita = mr.id_receita)
where (md.tipo = "Tarja preta") and (r.id_receita = 45123)

/*(D) Qual o fabricante do medicamento Aspirina?*/

select f.nome
from fabricante f
join medicamento md on (md.id_fabricante = f.id_fabricante)
where (md.nome = "Aspirina")
